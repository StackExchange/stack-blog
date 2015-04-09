$(document).ready(function() {

	var page = 1;
	var data;
	var prefix = "/blog";

	if ($("div.pagination").length > 0) {
		check_page();
	} else {
		$(".posts").css("visibility", "visible");
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
		$.get(prefix + "/json/index.json", function(response) {
			if (response) {
				var result = [];
				for (key in response.posts) {
					var post = response.posts[key];
					if (post.draft) continue;
					if (typeof channel !== 'undefined') {
						if (post.tags.indexOf(channel) == - 1) {
							continue
						}
					}
					result.push(post);
				}
				response.posts = result;

				data = response;

				set_page(page);

				// Set total pages
				$("span.page.total_pages").html(Math.max(Math.floor(data.posts.length / 5), 1));

				// Bind page clicks
				$("a.page").click(function() {
					var selected_page = ($(this).hasClass("older") ? page + 1 : page - 1);
					if (valid_page(selected_page)) {
						set_page(selected_page);
					}
				});
			}
		});
	}

	function set_page(page_num) {
		var max = Math.floor(data.posts.length / 5);

		if (data == null) return;
		if (!valid_page(page_num)) {
			if (page_num > max) page_num = max;
		}

		page = page_num;

		window.location.hash = "#page" + page_num.toString();

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

			var author_info = [];

			if (author.twitter) author_info.push('<a href="http://twitter.com/' + author.twitter + '">@' + author.twitter + '</a>');
			author_info.push(post.date);

			article.find(".author-link").html(author.name).attr("href", author.url);
			article.find(".author-info").html(author_info.join(" &bull; "));

			article.find("img.hero").attr("src", post.hero);
			article.find("a.hero_url").attr("href", post.url);

			article.find(".excerpt").html(post.content);
			article.find("a.read-more").attr("href", post.url);
			article.css("display", "block");

			var auth = $("#authors-container .author-container:eq(" + i + ")");
			if (auth && authors_posted.indexOf(author.twitter) == -1) {
				console.log(author);
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
		return (page_num > 0 && page_num <= Math.max(Math.floor(data.posts.length / 5), 1))
	}
});