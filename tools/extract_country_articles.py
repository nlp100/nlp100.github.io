#!/usr/bin/env python
# -*- coding: utf-8 -*-

import json
import sys
from wikiparser import *

class Extractor:
    def __init__(self, titles):
        self.titles = titles
        self.found = set()

    def article(self, title, text):
        if title in titles:
            self.found.add(title)
            print(json.dumps(dict(title=title, text=text), ensure_ascii=False))

if __name__ == '__main__':
    titles = set(x.strip('\n').replace('_', ' ') for x in open(sys.argv[1]).readlines())
    
    handler = Extractor(titles)
    target = WikiParser(handler)
    parser = XMLParser(target=target)

    for line in sys.stdin:
        parser.feed(line)
    parser.close()

    not_found = titles - handler.found
    for s in not_found:
        sys.stderr.write(s)
        sys.stderr.write('\n')
