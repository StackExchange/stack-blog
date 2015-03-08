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
    			wordpress_src = re.search('/blog/images/wordpress/(.*)', src.group(1))
    			if wordpress_src:
	    			image_src = wordpress_src.group(1)
	    			path = 'images/wordpress/'+image_src
	    			print 'Retrieving ' + path + '...'
	    			if not os.path.isfile(path):
	    				print path
		    			f = open(path, "w")
		    			f.write(requests.get("http://blog.stackoverflow.com/wp-content/uploads/" + wordpress_src.group(1)).content)
		    			f.close()

    	continue
    	f = open(filename, "w")
    	contents = "".join(contents)
    	f.write(contents)
    	f.close()