#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import re
from wikiparser import *

class Extractor:
    def __init__(self):
        pass

    def article(self, title, text):
        if title == 'ISO 3166-1':
            lines = text.split('\n')
            for line in lines:
                # |{{flagicon|...} [[ ... ]] for Japanese Wikipedia
                # | {{flagdeco|...} [[ ... ]] for English Wikipedia
                m = re.match(r'\|\s*\{\{(flagicon|flagdeco)\|[^}]+\}\}\s*\[\[([^\]]+)\]\]', line)
                if m is not None:
                    link = m.group(2)
                    fields = link.split('|')
                    print(fields[0])

if __name__ == '__main__':
    handler = Extractor()
    target = WikiParser(handler)
    parser = XMLParser(target=target)

    for line in sys.stdin:
        parser.feed(line)
    parser.close()
