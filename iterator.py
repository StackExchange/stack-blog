import os
rootdir = '_posts'

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        filename = os.path.join(subdir, file)
        if 'podcast' in filename:
        	f = open(filename, "r")
        	contents = f.readlines()
        	f.close()
        	contents.insert(5, 'hero: /blog/images/category/podcasts.jpg\n')
        	f = open(filename, "w")
        	contents = "".join(contents)
        	f.write(contents)
        	f.close()