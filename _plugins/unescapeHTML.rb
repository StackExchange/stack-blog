module Jekyll
  module UnescapeHTML
    def unescapeHTML(text)
      CGI.unescapeHTML(text)
    end
  end
end

Liquid::Template.register_filter(Jekyll::UnescapeHTML)
