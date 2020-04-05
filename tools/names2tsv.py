"""

$ wget https://www.ssa.gov/oact/babynames/names.zip
$ unzip names.zip
"""


import glob
import operator

D = []
sources = sorted(glob.glob('yob????.txt'))

for source in sources:
    M = []
    F = []
    year = source[3:7]
    with open(source) as fi:
        for line in fi:
            fields = line.strip('\n').split(',')
            if fields[1] == 'F':
                F.append((fields[0], int(fields[2])))
            elif fields[1] == 'M':
                M.append((fields[0], int(fields[2])))
        F.sort(key=operator.itemgetter(1), reverse=True)
        M.sort(key=operator.itemgetter(1), reverse=True)

        for r in F[:10]:
            D.append((r[0], 'F', str(r[1]), year))
        for r in M[:10]:
            D.append((r[0], 'M', str(r[1]), year))

for d in D:
    print('\t'.join(d))
