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
    		src = re.search('\!\[.*?\]\((.*?)\)', line)
    		if src:
    			if re.search('\.(gif|png|jpg|jpeg)', src.group(1)):
    				print src.group(1)
	    			image = "hero: " + src.group(1) + "\n"
	    			contents[5] = "hero: " + src.group(1) + "\n"
	    			f = open(filename, "w")
			    	contents = "".join(contents)
			    	f.write(contents)
			    	f.close()
			    	break