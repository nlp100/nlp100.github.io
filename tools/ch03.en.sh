#!/bin/bash
# WARNING: This script requires a huge disk space (ca. 20GB)

wget -N https://dumps.wikimedia.org/enwiki/latest/enwiki-latest-pages-articles.xml.bz2
bzcat enwiki-latest-pages-articles.xml.bz2 | python wiki2json.py | python extract.py iso3166-1-en.json | gzip -9c > enwiki.json.gz
cat iso3166-1-en.json | python extract_country_names.py > country-names-en.txt
zcat enwiki.json.gz | python extract_country_articles.py country-names-en.txt | gzip -9c > enwiki-country.json.gz
