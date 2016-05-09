module Jekyll
	module SoundCloudFilter
		def soundcloudify(url)
			trackId = url.match(/\/stream\/(\d+)-/)[1]
			"<iframe
				width=\"100%\"
				height=\"166\"
				scrolling=\"no\"
				frameborder=\"no\"
				src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/#{trackId}&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false\">
			</iframe>"
		end
	end
end

Liquid::Template.register_filter(Jekyll::SoundCloudFilter)