import os
rootdir = '_posts'

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        filename = os.path.join(subdir, file)
        if 'podcast' in filename:
        	f = open("path_to_file", "r")
        	contents = f.readlines()
        	f.close()
        	contents.insert(5, 'hero: /blog/images/category/podcasts.jpg')
        	f = open("path_to_file", "w")
        	contents = "".join(contents)
        	f.write(contents)
        	f.close()