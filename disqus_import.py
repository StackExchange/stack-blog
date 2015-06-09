import requests, pprint
import xml.etree.ElementTree as ET

dev = True
api_key = "zPVMSrI6akiK2z3dT6kSRz9h4a5AiXmBaQQCqBbcIhtVpaKY46dvWdUlMNa6R8dC"
api_secret = "ijUMgGSaJ2ta5Fm3cxnJu3jJ8HKMOp9B80PAoJ0jxzzaYXQkF6lm7NUsiaQ3DfG0"
access_token = "d9f448464a2c4e7eb767217c445c6218"
forum = "stackoverflowblog"

e = ET.parse('blog.xml').getroot()
posts = e[0].findall('item')
blog_data = []
for post in posts:
	post_data = {}
	post_data["forum"] = "stackoverflowblog"
	post_data["title"] = post.find("title").text
	post_data["url"] = post.find("link").text.replace("blog.stackoverflow.com", "blog.stackexchange.com")
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
		post_data["comments"].append(comment_data)
	blog_data.append(post_data)

# pprint.pprint(blog_data)

# First, get all existing threads and clear them
cursor = True
cursor_id = None
while cursor:
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
		response = requests.post("https://disqus.com/api/3.0/threads/remove.json", params = payload_2)
		print response.text

# Create new threads in disqus based on the XML
for post in blog_data:
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
	print thread_data.json()
	break

