#!/bin/bash
# WARNING: This script requires a huge disk space (ca. 20GB)

wget -N http://dumps.wikimedia.org/jawiki/latest/jawiki-latest-pages-articles.xml.bz2
bzcat jawiki-latest-pages-articles.xml.bz2 | python wiki2json.py | python extract.py iso3166-1-ja.json | gzip -9c > jawiki.json.gz
cat iso3166-1-ja.json | python extract_country_names.py > country-names-ja.txt
zcat jawiki.json.gz | python extract_country_articles.py country-names-ja.txt | gzip -9c > jawiki-country.json.gz
