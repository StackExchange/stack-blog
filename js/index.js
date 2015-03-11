$(document).ready(function() {

	var page;

	if ($("section.page").length > 0) {
		if (!check_page()) {
			set_page(1);
		}
	}

	if ($("section.page").length > 0) {
		$("a.page").click(function() {
			var page_num = ($(this).hasClass("older") ? page + 1 : page - 1);
			if (valid_page(page_num)) {
				set_page(page_num);
			}
		});
	}

	function check_page() {
		var href = window.location.hash;
		console.log(href);
		var pages = $("section.page");
		var post_count = $("article.post").length;
		if (pages.length > 0) {
			var matched = href.match('^#page');
			if (matched) {
				var page_num = href.split("#page")[1];
				if (page_num = parseInt(page_num)) {
					set_page(page_num);
					return true;
				}
			}
		}
		return false;
	}

	function set_page(page_num) {
		page = page_num;
		$("section.page").removeClass("active");
		$("section.page#page_" + page_num.toString()).addClass("active");

		window.location.hash = "#page" + page_num.toString();

		var next = page_num + 1;
		var previous = page_num - 1;

		$("span.page.total_pages").html(Math.floor($("article.post").length / 5));
		$("span.page.current_page").html(page_num);

		$("a.page.older").css("visibility", (!valid_page(next) ? "hidden" : "visible"));
		$("a.page.newer").css("visibility", (!valid_page(previous) ? "hidden" : "visible"));
	}

	function valid_page(page_num) {
		return (page_num <= Math.max(Math.floor($("article.post").length / 5) && (page_num > 0)), 1);
	}
})