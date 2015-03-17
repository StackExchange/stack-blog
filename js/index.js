$(document).ready(function() {

	var page;
	var data;

	if ($("div.pagination").length > 0) {
		page = 1;
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
		$.get("/blog/json/index.json", function(response) {
			if (response) {

				if (typeof channel !== 'undefined') {
					var result = []
					for (key in response.posts) {
						var post = response.posts[key];
						if (post.categories.indexOf(channel) > - 1) {
							result.push(post);
						}
					}
					response.posts = result;
				}

				data = response;

				console.log(data);

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
		if (data == null) return;
		page = page_num;

		window.location.hash = "#page" + page_num.toString();

		var next = page_num + 1;
		var previous = page_num - 1;

		$("span.page.current_page").html(page_num);

		var offset = (page_num - 1) * 5;

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
		}

		$(".posts").css("visibility", "visible");
	}

	function valid_page(page_num) {
		return (page_num > 0 && page_num <= Math.max(Math.floor(data.posts.length / 5), 1))
	}
});