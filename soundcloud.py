import os, re, requests
rootdir = '_posts'

for subdir, dirs, files in os.walk(rootdir):
    for file in files:
        filename = os.path.join(subdir, file)

	contents = ""
    	with open(filename, "r") as f:
    		contents = f.readlines()

    	# Get WordPress 
    	slug = filename.replace("_posts/", "").replace(".markdown", "")

    	splits = slug.split("-")
    	year = splits[0]
    	month = splits[1]
    	end = "-".join(splits[3:])

    	wordpress_url = "http://blog.stackoverflow.com" + "/" + "/".join([year, month, end])

    	if re.search('podcast', wordpress_url):
    		print wordpress_url
	    	response = requests.get(wordpress_url)
	    	if response:
	    		for line in response.content.split("\n"):
	    			if re.search('<iframe|<object', line) and re.search("soundcloud", line):
	    				contents.append('\n'+line)
	    				f = open(filename, "w")
	    				f.write("".join(contents))
	    				f.close()

    	continue

    	contents.append(iframe)
    	f = open(filename, "w")
    	f.write("".join(contents))
    	f.close()
