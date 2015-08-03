# http://stackoverflow.com/a/27179386/70613
module Jekyll
  module ShuffleFilter
    def shuffle(array)
      array.shuffle
    end
  end
end

Liquid::Template.register_filter(Jekyll::ShuffleFilter)