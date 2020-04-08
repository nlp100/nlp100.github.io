#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json
import sys

for line in sys.stdin:
    line = line.strip('\n')
    d = json.loads(line)

    if d['title'] == 'ISO 3166-1':
        sys.stdout.write(line)
        sys.stdout.write('\n')
