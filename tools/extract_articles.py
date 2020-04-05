#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json
import sys

if len(sys.argv) < 2:
    sys.stderr.write('USAGE: {} <iso3166-1.json>\n'.format(sys.argv[0]))
    sys.exit(1)

for line in sys.stdin:
    line = line.strip('\n')
    d = json.loads(line)

    if d['title'] == 'ISO 3166-1':
        with open(sys.argv[1], 'w') as fo:
            fo.write(line)
            fo.write('\n')

    if d['title'].startswith('Wikipedia:'):
        continue

    stop = False
    summary = ''
    category = []
    for line in d['text'].split('\n'):
        if line.startswith('==') and line.endswith('=='):
            stop = True
        if line.startswith('[[Category:') and line[-2:] == ']]':
            category.append(line[11:-2])
        if not stop:
            summary += line
            summary += '\n'
    print(json.dumps(dict(title=d['title'], text=summary, category=category), ensure_ascii=False))
