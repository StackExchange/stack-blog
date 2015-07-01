$(document).ready(function() {

	var page = 1;
	var data;

	if (typeof pagination !== 'undefined') {
		if (pagination === true) {
			$(".pagination").css("display", "block");
		}
	}

	if (typeof top_active !== 'undefined') {
		$("nav a." + top_active).addClass("active");
	}

	if (typeof channel !== 'undefined') {
		if (channel != 'company' && channel != 'engineering') {
			$(".subheader a.category").removeClass("active");
			$(".subheader a.category#" + channel).addClass("active");
		}
	}

	if ($("div.pagination").length > 0) {
		check_page();
	} else {
		$(".posts").css("visibility", "visible");
	}

	if (typeof slug !== 'undefined') {
		if (slug.length > 0 && $(".disqus").length > 0) {
			$.getJSON(prefix + "/json/comments" + slug + ".json", function(response) {
				if (response) {
					comments = response.response
					for (key in comments) {
						comment = comments[key];
						var html = '<div class="comment">';
							html += '<a name="comment_' + key + '"></a>';
							html += '<div class="-row">';
								html += '<div class="header">';
									html += '<img src="http://www.gravatar.com/avatar/' + comment.gravatar_hash + '?s=48&d=identicon&r=PG&f=1"/>';
									html += '<p>';
									if (comment.author_url !== null) html += '<a href="' + comment.author_url + '">';
									html += comment.author_name;
									if (comment.author_url !== null) html += '</a>';
									html += '</p>';
									html += '<p><a href="#comment_' + key + '">' + comment.date + '</a></p>'
								html += '</div>';
							html += '</div>';
							html += '<div>' + comment.message + '</div>';
						html += '</div>';
						$(".disqus").prepend(html);
					}
					$(".disqus").prepend("<h3>" + comments.length + " archived comments</h3>");
				}
			})
		}
	}

	function check_page() {
		var href = window.location.hash;
		var matched = href.match('^#page');
		if (matched) {
			var page_num = href.split("#page")[1];
			if (page_num = parseInt(page_num)) {
				page = page_num;
			}
		}
		console.log(prefix + "/json/index.json");
		$.getJSON(prefix + "/json/index.json", function(response) {
			console.log(response)
			if (response) {
				var result = [];
				for (key in response.posts) {
					var post = response.posts[key];
					if (post.draft) continue;
					if (typeof channel !== 'undefined') {
						if (post.tags.indexOf(channel) == - 1) {
							continue;
						}
					}
					if (typeof top_active !== 'undefined' && (top_active == "engineering" || top_active == "company")) {
						if (post.tags.indexOf(top_active) == - 1) {
							continue;
						}
					}
					if (typeof author_id !== 'undefined') {
						if (post.author != author_id) {
							continue;
						}
					}
					result.push(post);
				}
				response.posts = result;

				data = response;

				console.log(response);

				set_page(page);

				// Set total pages
				$("span.page.total_pages").html(Math.max(Math.ceil(data.posts.length / 5), 1));

				// Bind page clicks
				$("a.page").click(function() {
					var selected_page = ($(this).hasClass("older") ? page + 1 : page - 1);
					if (valid_page(selected_page)) {
						set_page(selected_page);
					}
				});

				$(window).hashchange(function() {
					var selected_page = parseInt(window.location.hash.substr(5));
					if (valid_page(selected_page)) {
						set_page(selected_page);
					}
				})
			}
		});
	}

	function set_page(page_num) {
		var max = Math.ceil(data.posts.length / 5);

		if (data == null) return;
		if (!valid_page(page_num)) {
			if (page_num > max) page_num = max;
		}

		page = page_num;

		if (typeof pagination !== 'undefined' && pagination === true) {
			window.location.hash = "#page" + page_num.toString();
		}

		$(window).scrollTop(0);

		var next = page_num + 1;
		var previous = page_num - 1;

		$("span.page.current_page").html(page_num);

		$("a.page.older").css("visibility", page_num >= max ? "hidden" : "visible");
		$("a.page.newer").css("visibility", page_num <= 1 ? "hidden" : "visible");

		var offset = (page_num - 1) * 5;

		var authors_posted = [];

		for (var i = 0; i < 5; i++) {
			var post = data.posts[offset + i];
			var article = $("article.post:eq(" + i + ")");

			article.css("border-bottom", i == data.posts.length - 1 ? "none" : null);
			if (i >= data.posts.length || typeof post == 'undefined') {
				article.css("display", "none");
				continue;
			}

			var author = data.authors[post.author];

			article.find(".title").html(post.title).attr("href", post.url);
			article.find(".avatar").attr("src", author.avatar);

			var post_info = [];

			post_info.push(post.date);
			post_info.push('By ' + author.name);
			post_info.push('In ' + post.tags.join(", "))

			article.find(".post-info").html(post_info.join(" &bull; "));

			article.find("img.hero").attr("src", post.hero);
			article.find("a.hero_url").attr("href", post.url);

			article.find(".excerpt").html(post.content);
			article.find("a.read-more").attr("href", post.url);
			article.css("display", "block");

			var podcast = (post.tags.indexOf('podcasts') > -1);
			article.find(".podcast-container").css("display", podcast ? "block" : "none");
			
			var no_background = (podcast || post.hero.length == 0);
			article.find(".hero-container").css("display", no_background ? "none" : "block");

			var auth = $("#authors-container .author-container:eq(" + i + ")");
			if (auth && authors_posted.indexOf(author.twitter) == -1) {
				auth.find(".avatar-link").attr("href", author.url);
				auth.find(".avatar").attr("src", author.avatar);
				auth.find(".name-link").attr("href", author.url).html(author.name);
				auth.find("p.job").html(author.job);
				authors_posted.push(author.twitter);
				auth.css("display", "block");
			} else {
				auth.css("display", "none");
			}
		}

		$(".posts").css("visibility", "visible");
	}

	function valid_page(page_num) {
		return (page_num > 0 && page_num <= Math.max(Math.ceil(data.posts.length / 5), 1))
	}
});