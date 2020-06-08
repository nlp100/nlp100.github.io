#!/usr/bin/env bash

####################################
#
# LICENSE File from MIXER repository
#
####################################

#For MIXER software
#
#Copyright (c) 2015, Facebook, Inc. All rights reserved.
#
#Redistribution and use in source and binary forms, with or without modification,
#are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# * Neither the name Facebook nor the names of its contributors may be used to
#   endorse or promote products derived from this software without specific
#   prior written permission.
#
#THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
#ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
#WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
#DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
#ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
#(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
#LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
#ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
#(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
#SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

####################################
#
# PATENTS File from MIXER repository
#
####################################

#Additional Grant of Patent Rights Version 2
#
#"Software" means the "MIXER" software distributed by Facebook, Inc.
#
#Facebook, Inc. ("Facebook") hereby grants to each recipient of the Software
#("you") a perpetual, worldwide, royalty-free, non-exclusive, irrevocable
#(subject to the termination provision below) license under any Necessary
#Claims, to make, have made, use, sell, offer to sell, import, and otherwise
#transfer the Software. For avoidance of doubt, no license is granted under
#Facebook’s rights in any patent claims that are infringed by (i) modifications
#to the Software made by you or any third party or (ii) the Software in
#combination with any software or other technology.
#
#The license granted hereunder will terminate, automatically and without notice,
#if you (or any of your subsidiaries, corporate affiliates or agents) initiate
#directly or indirectly, or take a direct financial interest in, any Patent
#Assertion: (i) against Facebook or any of its subsidiaries or corporate
#affiliates, (ii) against any party if such Patent Assertion arises in whole or
#in part from any software, technology, product or service of Facebook or any of
#its subsidiaries or corporate affiliates, or (iii) against any party relating
#to the Software. Notwithstanding the foregoing, if Facebook or any of its
#subsidiaries or corporate affiliates files a lawsuit alleging patent
#infringement against you in the first instance, and you respond by filing a
#patent infringement counterclaim in that lawsuit against that party that is
#unrelated to the Software, the license granted hereunder will not terminate
#under section (i) of this paragraph due to such counterclaim.
#
#A "Necessary Claim" is a claim of a patent owned by Facebook that is
#necessarily infringed by the Software standing alone.
#
#A "Patent Assertion" is any lawsuit or other action alleging direct, indirect,
#or contributory infringement or inducement to infringe any patent, including a
#cross-claim or counterclaim.


####################################
#
# Modification from the original script
# original: https://raw.githubusercontent.com/facebookarchive/MIXER/master/prepareData.sh
#
####################################

# 1.
# http_proxy=fwdproxy:8080 https_proxy=fwdproxy:8080 wget "$URL"
# to
# wget "$URL"

# 2.
# remove `th makedata.lua -dstDir data -srcDir prep`


echo 'Cloning Moses github repository (for tokenization scripts)...'
git clone https://github.com/moses-smt/mosesdecoder.git

SCRIPTS=mosesdecoder/scripts
TOKENIZER=$SCRIPTS/tokenizer/tokenizer.perl
LC=$SCRIPTS/tokenizer/lowercase.perl
CLEAN=$SCRIPTS/training/clean-corpus-n.perl

URL="http://wit3.fbk.eu/archive/2014-01/texts/de/en/de-en.tgz"
GZ=de-en.tgz

if [ ! -d "$SCRIPTS" ]; then
    echo "Please set SCRIPTS variable correctly to point to Moses scripts."
    exit
fi

src=de
tgt=en
lang=de-en
prep=prep
tmp=prep/tmp
orig=orig

mkdir -p $orig $tmp $prep

echo "Downloading data from ${URL}..."
cd $orig
wget "$URL"

if [ -f $GZ ]; then
    echo "Data successfully downloaded."
else
    echo "Data not successfully downloaded."
    exit
fi

tar zxvf $GZ
cd ..

echo "pre-processing train data..."
for l in $src $tgt; do
    f=train.tags.$lang.$l
    tok=train.tags.$lang.tok.$l

    cat $orig/$lang/$f | \
    grep -v '<url>' | \
    grep -v '<talkid>' | \
    grep -v '<keywords>' | \
    sed -e 's/<title>//g' | \
    sed -e 's/<\/title>//g' | \
    sed -e 's/<description>//g' | \
    sed -e 's/<\/description>//g' | \
    perl $TOKENIZER -threads 8 -l $l > $tmp/$tok
    echo ""
done
perl $CLEAN -ratio 1.5 $tmp/train.tags.$lang.tok $src $tgt $tmp/train.tags.$lang.clean 1 50
for l in $src $tgt; do
    perl $LC < $tmp/train.tags.$lang.clean.$l > $tmp/train.tags.$lang.$l
done

echo "pre-processing valid/test data..."
for l in $src $tgt; do
    for o in `ls $orig/$lang/IWSLT14.TED*.$l.xml`; do
    fname=${o##*/}
    f=$tmp/${fname%.*}
    echo $o $f
    grep '<seg id' $o | \
        sed -e 's/<seg id="[0-9]*">\s*//g' | \
        sed -e 's/\s*<\/seg>\s*//g' | \
        sed -e "s/\’/\'/g" | \
    perl $TOKENIZER -threads 8 -l $l | \
    perl $LC > $f
    echo ""
    done
done


echo "creating train, valid, test..."
for l in $src $tgt; do
    awk '{if (NR%23 == 0)  print $0; }' $tmp/train.tags.de-en.$l > $prep/valid.de-en.$l
    awk '{if (NR%23 != 0)  print $0; }' $tmp/train.tags.de-en.$l > $prep/train.de-en.$l

    cat $tmp/IWSLT14.TED.dev2010.de-en.$l \
        $tmp/IWSLT14.TEDX.dev2012.de-en.$l \
        $tmp/IWSLT14.TED.tst2010.de-en.$l \
        $tmp/IWSLT14.TED.tst2011.de-en.$l \
        $tmp/IWSLT14.TED.tst2012.de-en.$l \
        > $prep/test.de-en.$l
done
