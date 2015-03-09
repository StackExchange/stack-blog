$(document).ready(function() {

	if (!check_page()) {
		set_page(1);
	}

	if ($("section.page").length > 0) {
		$("a.page").click(function() {
			var page_num;
			if (page_num = parseInt($(this).attr("href").split("#page")[1])) {
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
				alert(page_num);
				if (page_num = parseInt(page_num)) {
					set_page(page_num);
					return true;
				}
			}
		}
		return false;
	}

	function set_page(page_num) {
		$("section.page").removeClass("active");
		$("section.page#page_" + page_num.toString()).addClass("active");

		var previous = page_num - 1;
		var next = page_num + 1;
		$("a.page.older").attr("href", "#page" + next.toString()).css("visibility", ((next > $("article.post").length) ? "none" : "visible"));
		$("a.page.newer").attr("href", "#page" + previous.toString()).css("visibility", ((previous < 0) ? "none" : "visible"));
	}
})