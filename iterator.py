import os, re, requests
rootdir = '_posts'

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        filename = os.path.join(subdir, file)

    	f = open(filename, "r")
    	contents = f.readlines()
    	f.close()

    	# Find first image
    	for key, line in enumerate(contents):
    		src = re.search('\!\[.*\]\((.*?)\)', line)
    		if src:
    			image = "hero: " + src.group(1) + "\n"
    			contents.insert(5, "hero: " + src.group(1) + "\n")
    			f = open(filename, "w")
		    	contents = "".join(contents)
		    	f.write(contents)
		    	f.close()
		    	break