---
layout: null
---
(function($) {

	var tags = [];
	$(".sidebar .postTag").each(function() {
		tags.push($(this).text())
	});

	// returns a state object, as expressed by the url
	var parseUrl = function(url) {
		var state = {};

		// is there a hash?
		var parts = url.split('#');
		if (parts.length < 2) {
			// no hash
			return state;
		}

		var hash = parts[1];

		if (tags.indexOf(hash) !== -1) {
			state.tag = decodeURIComponent(hash);
		}

		return state;
	};

	var speakers = $('.author-container');
	var filter = $('#tag-filter');

	var transition = function(state) {
		if (state.tag) {
			speakers.hide(0, function() {
				speakers.filter('.' + state.tag).show();
				filter.find('.postTag').html(state.tag);
				filter.show();
			});			
		} else {
			filter.hide();
			speakers.show();
		}
	};

	var pop = function() {
		var state = parseUrl(location.href);
		transition(state);
	};

	pop();
	window.onpopstate = pop;	


})(jQuery);