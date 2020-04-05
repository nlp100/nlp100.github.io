#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json
import sys

titles = set(x.strip('\n').replace('_', ' ') for x in open(sys.argv[1]).readlines())
found = set()

for line in sys.stdin:
    line = line.strip('\n')
    d = json.loads(line)
    if d['title'] in titles:
        found.add(d['title'])
        print(line)

not_found = titles - found
for s in not_found:
    sys.stderr.write(s)
    sys.stderr.write('\n')
