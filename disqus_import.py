import requests, pprint
import xml.etree.ElementTree as ET
import logging, hashlib, json, os, time

dev = True
api_key = "kxEiKFv9wfahgkphY5mHNw1XQa7eX2w9XSt6xVO0DIgavfR6IBPwIITjOPrJpk37"
api_secret = "" # Deprecated
access_token = "d9f448464a2c4e7eb767217c445c6218"
forum = "stackoverflowblog"

# These two lines enable debugging at httplib level (requests->urllib3->http.client)
# You will see the REQUEST, including HEADERS and DATA, and RESPONSE with HEADERS but without DATA.
# The only thing missing will be the response.body which is not logged.
try:
    import http.client as http_client
except ImportError:
    # Python 2
    import httplib as http_client
http_client.HTTPConnection.debuglevel = 1

# You must initialize logging, otherwise you'll not see debug output.
logging.basicConfig() 
logging.getLogger().setLevel(logging.DEBUG)
requests_log = logging.getLogger("requests.packages.urllib3")
requests_log.setLevel(logging.DEBUG)
requests_log.propagate = True

# Make sure when doing the export that you are only exporting posts that have a status of published

e = ET.parse('blog.xml').getroot()
posts = e[0].findall('item')
blog_data = []
for post in posts:
	post_data = {}
	post_data["forum"] = "stackoverflowblog"
	post_data["title"] = post.find("title").text
	post_data["url"] = post.find("link").text.replace("blog.stackoverflow.com", "blog.stackexchange.com")
	post_data["slug"] = post.find
	if dev: post_data["url"] = post_data["url"].replace("blog.stackexchange.com", "dev.blog.stackexchange.com")
	post_data["date"] = post.find("{http://wordpress.org/export/1.2/}post_date").text
	post_data["comments"] = []
	comments = post.findall("{http://wordpress.org/export/1.2/}comment")
	for comment in comments:
		comment_data = {}
		comment_data["message"] = comment.find("{http://wordpress.org/export/1.2/}comment_content").text
		comment_data["author_email"] = comment.find("{http://wordpress.org/export/1.2/}comment_author_email").text
		comment_data["author_name"] = comment.find("{http://wordpress.org/export/1.2/}comment_author").text
		comment_data["author_url"] = comment.find("{http://wordpress.org/export/1.2/}comment_author_url").text
		comment_data["date"] = comment.find("{http://wordpress.org/export/1.2/}comment_date").text
		comment_data["ip_address"] = comment.find("{http://wordpress.org/export/1.2/}comment_author_IP").text
		comment_data["gravatar_hash"] = None
		if comment_data["author_email"]:
			m = hashlib.md5()
			m.update(comment_data["author_email"].lower())
			comment_data["gravatar_hash"] = m.hexdigest()
		post_data["comments"].append(comment_data)
	blog_data.append(post_data)

# pprint.pprint(blog_data)

result = {}
for post in blog_data:
	slug = post["url"].replace("http://blog.stackexchange.com", "").replace("http://dev.blog.stackexchange.com", "")
	slug = slug[:-1] if slug[:1] == "/" else slug
	result[slug] = []
	for comment in post["comments"]:
		del(comment["author_email"])
		del(comment["ip_address"])
		date_posted = time.strptime(comment["date"], "%Y-%m-%d %H:%M:%S")
		comment["date"] = time.strftime("%b %d, %Y", date_posted)

		result[slug].append(comment)

	json_result = json.dumps({"response": result[slug]})

	parts = slug.split("/")
	if len(parts) < 3:
		print slug
		print parts
	directory = "json/comments/" + parts[1] + "/" + parts[2]

	if not os.path.exists(directory):
		os.makedirs(directory)

	f = open("json/comments" + slug + ".json", "w")
	f.write(json_result)
	f.close()

# First, get all existing threads and clear them
cursor = True
cursor_id = None
while cursor:
	break
	payload = {
		"api_key": api_key,
		"forum": forum,
		"limit": 100
	}
	if cursor_id is not None:
		payload["cursor"] = cursor_id
	response = requests.get("https://disqus.com/api/3.0/threads/list.json", params = payload)
	threads = response.json()
	pprint.pprint(threads)
	if threads.get("cursor").get("hasNext"):
		cursor = True
		cursor_id = threads.get("cursor").get("next")
	else:
		cursor = False
		cursor_id = None

	for thread in threads.get("response"):
		thread_data = {
			"id": thread.get("id"),
			"link": thread.get("link"),
			"title": thread.get("title")
		}

		payload_2 = {
			"api_key": api_key,
			"api_secret": api_secret,
			"access_token": access_token,
			"thread": thread_data.get("id")
		}
		continue
		response = requests.post("https://disqus.com/api/3.0/threads/remove.json", params = payload_2)
		print response.text

# Create new threads in disqus based on the XML
count = 0
for post in blog_data:
	break
	code = None

	payload_3 = {
		"api_key": api_key,
		"api_secret": api_secret,
		"access_token": access_token,
		"forum": forum,
		"title": post.get("title"),
		"url": post.get("url"),
		"date": post.get("date")
	}

	thread_data = requests.post("https://disqus.com/api/3.0/threads/create.json", params = payload_3)
	created_thread = thread_data.json()

	print created_thread

	if created_thread.get("code") == 2:
		restore_data = requests.post("https://disqus.com/api/3.0/threads/restore.json", params = {
				"api_key": api_key,
				"api_secret": api_secret,
				"access_token": access_token,
				"thread:link": post.get("url")
			})
		restore = restore_data.json()
		code = restore.get("response")[0].get("id")
	else:
		code = created_thread.get("response").get("id")

	for comment in post.get("comments"):
		payload_4 = {
			"api_key": api_key,
			"message": comment.get("message"),
			"thread": code,
			"author_email": comment.get("author_email"),
			"author_name": comment.get("author_name"),
			"state": "approved",
			"author_url": comment.get("author_url"),
			"date": comment.get("date"),
			"ip_address": comment.get("ip_address") 
		}

		headers = {
			"Host": ".disqus.com",
			"Referrer": "stackexchange.com"
		}

		comment_data = requests.post("https://disqus.com/api/3.0/posts/create.json", params = payload_4, headers = headers)
		print comment_data.json()
		# print comment_data.headers
		break

	count += 1
	if count > 1:
		break

