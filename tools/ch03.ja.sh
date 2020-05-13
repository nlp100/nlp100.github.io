#!/bin/bash
# WARNING: This script requires a huge disk space (ca. 20GB)

#echo "Downloading the Wikipedia dump"
#wget -N http://dumps.wikimedia.org/jawiki/latest/jawiki-latest-pages-articles.xml.bz2
echo "Extracting a list of countries included in the article ISO 3166-1."
bzcat jawiki-latest-pages-articles.xml.bz2 | python extract_country_names.py > country-names-ja.txt
echo "Extracting articles corresponding to the country list."
bzcat jawiki-latest-pages-articles.xml.bz2 | python extract_country_articles.py country-names-ja.txt | gzip -9c > jawiki-country.json.gz
