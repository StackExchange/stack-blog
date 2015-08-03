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

	// shuffle so no one gets preferential treatment
	
	// from http://stackoverflow.com/a/2450976/70613
	var shuffle = function (array) {
		var currentIndex = array.length, temporaryValue, randomIndex ;

		// While there remain elements to shuffle...
		while (0 !== currentIndex) {

			// Pick a remaining element...
			randomIndex = Math.floor(Math.random() * currentIndex);
			currentIndex -= 1;

			// And swap it with the current element.
			temporaryValue = array[currentIndex];
			array[currentIndex] = array[randomIndex];
			array[randomIndex] = temporaryValue;
		}

		return array;
	}

	var list = $("#speakers-list");
	var speakers = list.find(".author-container");
	var shuffled = shuffle(speakers);

	shuffled.each(function() {
		$(this).prependTo(list);
	});

	list.show();	// a little racy, probably
	
})(jQuery);