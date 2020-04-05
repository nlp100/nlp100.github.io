#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json
import sys
import re

d = json.load(sys.stdin)
lines = d['text'].split('\n')
for line in lines:
    # |{{flagicon|...} [[ ... ]] for Japanese Wikipedia
    # | {{flagdeco|...} [[ ... ]] for English Wikipedia
    m = re.match(r'\|\s*\{\{(flagicon|flagdeco)\|[^}]+\}\}\s*\[\[([^\]]+)\]\]', line)
    if m is not None:
        link = m.group(2)
        fields = link.split('|')
        print(fields[0])
