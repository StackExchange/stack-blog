import os 
import re 
import requests
rootdir = '_posts'

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        filename = os.path.join(subdir, file)

        contents = ""
    	with open(filename, "r") as f:
    	    contents = f.readlines()

    	# Find first image
        if re.search('podcast', filename):
            if not re.search('^hero: ', contents[6]):
                print filename
                contents.insert(6, 'hero: /images/category/podcasts.jpg\n')
                with open(filename, "w") as f:
                    f.write("".join(contents))
