import urllib2

def download(url='https://www.gutenberg.org/files/11/11.txt'):
    text = ''
    body = False
    for line in urllib2.urlopen(url):
        if line.strip() == "*** START OF THIS PROJECT GUTENBERG EBOOK ALICE'S ADVENTURES IN WONDERLAND ***":
            body = True
        elif line.strip() == "*** END OF THIS PROJECT GUTENBERG EBOOK ALICE'S ADVENTURES IN WONDERLAND ***":
            body = False
        elif body:
            text += line
    return text

if __name__ == '__main__':
    with open('alice.txt', 'w') as fo:
        fo.write(download())
