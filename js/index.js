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
				data = response;

				set_page(page);

				// Set total pages
				$("span.page.total_pages").html(Math.floor(data.posts.length / 5));

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
			var author = data.authors[post.author];
			var article = $("article.post:eq(" + i + ")");

			article.find(".title").html(post.title).attr("href", post.url);
			article.find(".avatar").attr("src", author.avatar);
			article.find(".author-link").html(author.name).attr("href", author.url);
			article.find(".twitter-link").html(author.twitter ? "@" + author.twitter : "").attr("href", "http://twitter.com/" + author.twitter);
			article.find(".date").html(post.date);

			article.find("img.hero").attr("src", post.hero);
			article.find("a.hero_url").attr("href", post.url);

			article.find(".excerpt").html(post.content);
			article.find("a.read-more").attr("href", post.url);
		}

		$(".posts").css("visibility", "visible");
	}

	function valid_page(page_num) {
		return (page_num > 0 && page_num <= Math.max(Math.floor(data.posts.length / 5), 1))
	}
})