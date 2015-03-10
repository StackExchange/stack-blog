import os, re, requests
rootdir = '_posts'

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        filename = os.path.join(subdir, file)

    	f = open(filename, "r")
    	contents = f.readlines()
    	f.close()

    	# Find first image
        if re.search('podcast', filename):
            if re.search('^hero: ', contents[6]):
                print filename
                contents.insert(6, 'hero: /blog/images/category/podcasts.jpg\n')
                f = file.open(filename, "w")
                f.write("".join(contents))
                f.close()
