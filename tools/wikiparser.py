#!/usr/bin/env python
# -*- coding: utf-8 -*-

from xml.etree.ElementTree import XMLParser

class WikiParser:
    def __init__(self, handler):
        self.elements = []
        self.title = ''
        self.text = ''
        self.handler = handler
    
    def start(self, tag, attrib):
        p = tag.rfind('}')
        elem = tag[p+1:] if 0 <= p else tag
        self.elements.append(elem)
        if self.elements == ['mediawiki', 'page']:
            self.title = ''
            self.text = ''

    def end(self, tag):
        if self.elements == ['mediawiki', 'page']:
            self.handler.article(self.title, self.text)
        self.elements.pop()

    def data(self, data):
        if self.elements == ['mediawiki', 'page', 'title']:
            self.title += data
        elif self.elements == ['mediawiki', 'page', 'revision', 'text']:
            self.text += data

    def close(self):
        pass
