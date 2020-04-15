#!/bin/bash
# WARNING: This script requires a huge disk space (ca. 20GB)

#echo "Downloading the Wikipedia dump"
#wget -N https://dumps.wikimedia.org/enwiki/latest/enwiki-latest-pages-articles.xml.bz2
echo "Extracting a list of countries included in the article ISO 3166-1."
bzcat enwiki-latest-pages-articles.xml.bz2 | python extract_country_names.py > country-names-en.txt
echo "Extracting articles corresponding to the country list."
bzcat enwiki-latest-pages-articles.xml.bz2 | python extract_country_articles.py country-names-en.txt | gzip -9c > enwiki-country.json.gz
