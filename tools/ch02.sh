#!/bin/bash
wget https://www.ssa.gov/oact/babynames/names.zip -O names.zip
unzip names.zip
python names2tsv.py > ../data/popular-names.txt
