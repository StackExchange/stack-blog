import os, re
rootdir = '_posts'

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        filename = os.path.join(subdir, file)

    	f = open(filename, "r")
    	contents = f.readlines()
    	f.close()

    	# Find first image
    	for key, line in enumerate(contents):
    		src = re.search('\!\[.*\]\((.*)\)', line)
    		if src:
    			folder = file.replace(".markdown", "")
    			x = line.replace(str("/blog/images/" + folder), "http://blog.stackoverflow.com/wp-content/uploads")
    			contents[key] = x

    	f = open(filename, "w")
    	contents = "".join(contents)
    	f.write(contents)
    	f.close()