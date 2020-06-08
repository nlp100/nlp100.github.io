#!/usr/bin/env python
# -*- coding: utf-8 -*-

import re
import sys

for line in sys.stdin:
    line = unicode(line).strip('\r\n')
    line = re.sub(ur'［＃.+?］', '', line)
    line = re.sub(ur'〔.+?〕', '', line)
    line = re.sub(ur'《.+?》', '', line)
    line = re.sub(ur'｜', '', line)
    line = re.sub(ur'([。？])', lambda m: m.group(1) + '\n', line)
    sys.stdout.write('{}\n'.format(line))
