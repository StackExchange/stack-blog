---
layout: null
---
(function() {
	var id = $(".full-post[data-id]").data("id");
	if (!id || !$(".disqus").length) {
		return;
	}

	$.getJSON("{{ site.base_url }}/json/comments" + id + ".json", function(response) {
		if (!response) {
			return;
		}
		comments = response.response
		for (var key = comments.length-1; key >=0; key--) {
			comment = comments[key];
			var html = '<div class="comment">';
				html += '<a name="comment_' + key + '"></a>';
				html += '<div class="-row">';
					html += '<div class="header">';
						html += '<img src="https://www.gravatar.com/avatar/' + comment.gravatar_hash + '?s=48&d=identicon&r=PG&f=1"/>';
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
	});
}());
