#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import json
from xml.etree.ElementTree import XMLParser

class ContentExtractor:
    def __init__(self):
        self.elements = []
        self.title = ''
        self.text = ''
    
    def start(self, tag, attrib):
        p = tag.rfind('}')
        elem = tag[p+1:] if 0 <= p else tag
        self.elements.append(elem)
        if self.elements == ['mediawiki', 'page']:
            self.title = ''
            self.text = ''

    def end(self, tag):
        if self.elements == ['mediawiki', 'page']:
            print(json.dumps(dict(title=self.title, text=self.text), ensure_ascii=False))
        self.elements.pop()

    def data(self, data):
        if self.elements == ['mediawiki', 'page', 'title']:
            self.title += data
        elif self.elements == ['mediawiki', 'page', 'revision', 'text']:
            self.text += data

    def close(self):
        pass

if __name__ == '__main__':
    target = ContentExtractor()
    parser = XMLParser(target=target)

    for line in sys.stdin:
        parser.feed(line)
    parser.close()
