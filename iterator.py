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
    			wordpress_src = re.search('http://blog.stackoverflow.com/wp-content/uploads/(.*)', src.group(1))
    			if wordpress_src:
	    			x = line.replace("http://blog.stackoverflow.com/wp-content/uploads", "/blog/images/wordpress")
	    			contents[key] = x

    	f = open(filename, "w")
    	contents = "".join(contents)
    	f.write(contents)
    	f.close()