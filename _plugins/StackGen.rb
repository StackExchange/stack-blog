# Stack Exchange modified paging plugin, based on a custom tag pagination plugin:
# https://divshot.com/blog/web-development/advanced-jekyll-features/#pagination-with-category
# by Jake Johnson
module Jekyll
  class Page
    attr_accessor :dir
  end

  class All
    @@posts
    @@authors
    @@tags
    @@langs

    def initialize
      clear
    end

    def self.posts
      return @@posts
    end

    def self.authors
      return @@authors
    end

    def self.tags
      return @@tags
    end

    def self.langs
      return @@langs
    end

    def self.clear
      @@posts = []
      @@authors = Hash.new
      @@tags = Hash.new { |hash, key| hash[key] = Tag.new(key) }
      @@langs = Hash.new
    end
  end

  # Wraps a Jekyll post and pre-renders the list view of it once for re-use in many views
  class PreRenderedPost
    attr_reader :post, :pre_render, :tags, :date, :author, :data
    def initialize(site, post)
      @post = post
      @data = @post.data
      @tags = @data['tags']
      @date = post.date
      @langs = @data['langs']

      payload = Utils.deep_merge_hashes({
        'post' => post.to_liquid,
        'author' => author.to_liquid
      }, site.site_payload)
      layout = site.layouts['list-post']
      info = { :filters => [Jekyll::Filters], :registers => { :site => site, :page => payload['page'] } }
      
      renderer = Renderer::new(site, post)
      @pre_render = renderer.render_liquid(layout.content, payload, info, File.join(site.config['layouts_dir'], layout.name))
      All.posts << self
    end

    def author
      return All.authors[post.data['author']]
    end

    def set_author
      unless author
        missing = post.data['author'] || "<no author: specified>"
        Jekyll.logger.abort_with "Cannot find author #{missing} for post #{post.name}. Aborting build."
      end
      author.add_post(self)
      post.data['full_author'] = author
    end

    def to_s
      pre_render || ''
    end

    def to_liquid(attrs = nil)
      Utils.deep_merge_hashes({
        'pre_render' => @pre_render
      }, @post.to_liquid(attrs))
    end

    def is_localized
      if post.data.key?('langs') && !post.data['langs'].nil?
        if post.data['langs'].count > 0
          if !post.data['langs'].include?('en')
            return true
          end
        end
      end
      return false
    end
  end

  # Contains basic tag info for rendering tag views
  class Tag
    attr_reader :count
    attr_accessor :name, :slug, :count, :posts

    def initialize(name)
      @name = name
      @slug = name.gsub('.', '-')
      @posts = []
    end

    def count
      @posts.size
    end

    def add_post(pre_post)
      @posts << pre_post
    end

    def to_liquid(attrs = nil)
      {
        'name' => name,
        'slug' => slug,
        'count' => count,
        'posts' => posts
      }
    end
  end

  # Contains an author for side-bar rendering
  class Author
    attr_accessor :id, :url, :name, :avatar, :twitter, :website, :github, :stack, :job

    def initialize(site, author_doc)
      author_data = author_doc.data
      @id = author_data['id']
      @url = "#{site.baseurl}/authors/#{id}"
      @name = author_data['name']
      @avatar = author_data['avatar']
      @twitter = author_data['twitter']
      @website = author_data['website']
      @github = author_data['github']
      @stack = author_data['stack']
      @job = author_data['job']
      @_posts = []
      All.authors[@id] = self
    end

    def posts
      @_posts.sort_by {|post| -post.date.to_f}
    end

    def add_post(pre_post)
      @_posts << pre_post
    end

    def post_count
      @_posts.size
    end

    def to_liquid(attrs = nil)
      {
        'id' => id,
        'name' => name,
        'avatar' => avatar,
        'twitter' => twitter,
        'website' => website,
        'github' => github,
        'stack' => stack,
        'url' => url,
        'job' => job,
        'posts' => posts
      }
    end
  end
 
  module Generators
    class Speakers < Generator
      def generate(site)
        speaker_tags = ['engineering', 'community', 'design', 'recruiting', 'product', 'marketing', 'sales', 'diversity']
        site.data['speaker_tags'] = speaker_tags

        for tag in speaker_tags
          page = Page.new(site, site.source, 'speakers/', 'index.html')
          page.data['people'] = site.collections['people'].docs.select { |p| p.data['speaker_tags'] && p.data['speaker_tags'].include?(tag)  }
          page.dir = 'speakers/' + tag + '/'
          page.data['tag'] = tag
          site.pages << page          
        end
      end
    end

    class Pagination < Generator
      # This generator is safe from arbitrary code execution.
      safe true
 
      # Generate paginated pages if necessary.
      #
      # site - The Site.
      #
      # Returns nothing.
      def generate(site)
        # This is really for every generation after the first
        All.clear

        # Here we want to pre-render all the posts once rather than once for each pagining permutation they appear in
        Jekyll.logger.info 'Starting: pre-generation of all list posts'
        for person in site.collections['people'].docs
          Author.new(site, person) unless person.data['author'] == false
        end

        # Exclude drafts from all collections early on
        disable_drafts = !site.config['posts_showdrafts']
        if disable_drafts
            Jekyll.logger.info 'Drafts are disabled (set posts_showdrafts: true in _config.yml to enable)'
        end

        for post in site.posts.docs
          if disable_drafts && (post.data['draft'] || (post.date.nil? && post.date > site.time))
            next
          end

          pre_post = PreRenderedPost.new(site, post)
          pre_post.set_author

          for tag in post.data['tags']
            All.tags[tag].add_post(pre_post)
          end
        end
        Jekyll.logger.info 'Finished: pre-generation of all list posts'

        Jekyll.logger.info 'Generating hierarchy pages:'
        paginate_tags(site, '', [])
        paginate_channels(site, 'engineering', ['design', 'development', 'evangelism', 'opinion', 'sysadmin'])
        paginate_channels(site, 'company', ['announcements', 'community', 'culture', 'diversity', 'podcasts'])

        Jekyll.logger.info "Generating author pages for #{All.authors.count} author(s):"
        All.authors.each do |id, author|
          paginate_inner(site, "/authors/#{id}", author.posts, [], 'author.html', Hash['author' => author])
        end

        Jekyll.logger.info "Generating tag pages for #{All.tags.count} tag(s):"
        All.tags.each do |key, tag|
          paginate_tags(site, '/tags/:tags', [key], 'tag.html', Hash['tag' => tag])
        end
      end

      def paginate_channels(site, category, channels)
        # Generate main category, e.g. /engineering
        paginate_tags(site, '/:tags', [category], category + '.html')

        # Generate all sub-channels
        for channel in channels
          paginate_tags(site, '/:tags', [category, channel], category + '.html')
        end
      end
 
      # Paginates posts by tags. Renders the <layout_source> or <path>/index.html.
      #
      # site           - The Site.
      # path           - The directory to render to.
      # catgory_tags   - The tag hierarchy to render
      # laytout_source - The /_layouts/<layoutsource> to use as a template
      # page_data      - The data to applend to the page object for liquid
      #
      # {"paginator" => { "page" => <Number>,
      #                   "per_page" => <Number>,
      #                   "posts" => [<Post>],
      #                   "total_posts" => <Number>,
      #                   "total_pages" => <Number>,
      #                   "previous_page" => <Number>,
      #                   "next_page" => <Number> }}
      def paginate_tags(site, path = '/:tags/', category_tags = [], layout_source = nil, page_data = nil)
        path = path.sub(':tags', category_tags.join("/"))

        posts = All.posts
        posts = posts.find_all{|post| !post.is_localized}

        for tag in category_tags
          posts = posts.find_all{|post| post.data['tags'].include?(tag)}
        end
        posts = posts.sort_by {|post| -post.date.to_f}
        paginate_inner(site, path, posts, category_tags, layout_source, page_data)
      end

      def paginate_inner(site, path, posts, category_tags, layout_source, page_data = nil)

        # Note: authors collection is per-collection inside the pagination, since the authors
        # displayed are the authors for the current post list. They are added in post (reverse-chronological)
        # order, meaning by recency as a result.
        latest_authors = []
        for post in posts
          post_author = post.author
          unless latest_authors.include?(post.author)
             latest_authors << post.author
          end
        end
 
        # Calculate the number of pages overall
        pages = Pager.calculate_pages(posts, site.config['posts_pagecount'].to_i)
        # Always generate 1 page
        if pages == 0
          pages = 1
        end
        # Output for the console
        Jekyll.logger.info("  [#{(category_tags.count == 0 ? "<all>" : category_tags.join(","))}] (#{path}) => #{posts.count} post(s), #{pages} page(s)")
        # Generate each page in the set
        (1..pages).each do |num_page|
          # The pager itself, outputs the paginator object in Liquid
          pager = Pager.new(site, num_page, posts, pages, path + "/", category_tags, latest_authors)
          # The page itself, ALL are created in the paginator because none exist as .html for input
          newpage = Page.new(site, site.source, layout_source ? site.config['layouts_dir'] : path + "/", layout_source || 'index.html')
          unless page_data.nil?
            page_data.each do |key, value|
              newpage.data[key] = value
            end
          end

          newpage.pager = pager
          newpage.dir = num_page > 1 ? File.join(path, "page#{num_page}") : path
          # This may seem irrelevant, but because of how Jekyll::Post generates the path, it's necessary to not have the generated
          # page in a sub-folder of the source file name. e.g. /company/page3/company/index.html will result from company.html
          # being used as the layout source
          newpage.basename = 'index'
          site.pages << newpage
        end
      end
    end
  end
 
  class Pager
    attr_reader :page, :per_page, :posts, :total_posts, :total_pages,
      :previous_page, :previous_page_path, :next_page, :next_page_path, 
      :tags, :top_tags, :category_tags, :latest_authors
 
    # Calculate the number of pages.
    #
    # all_posts - The Array of all Posts.
    # per_page  - The Integer of entries per page.
    #
    # Returns the Integer number of pages.
    def self.calculate_pages(all_posts, per_page)
      (all_posts.size.to_f / per_page.to_i).ceil
    end
 
    # Static: Return the pagination path of the page
    #
    # site     - the Jekyll::Site object
    # num_page - the pagination page number
    # target_dir - the dir where pagination is occurring
    #
    # Returns the pagination path as a string
    def self.paginate_path(site, num_page, target_dir)
      return nil if num_page.nil?
      return target_dir if num_page <= 1
      target_dir + "page#{num_page}/";
    end

    # Static: Return a String version of the input which has a leading slash.
    #         If the input already has a forward slash in position zero, it will be
    #         returned unchanged.
    #
    # path - a String path
    #
    # Returns the path with a leading slash
    def self.ensure_leading_slash(path)
      path[0..0] == "/" ? path : "/#{path}"
    end
 
    # Initialize a new Pager.
    #
    # config         - The Hash configuration of the site.
    # page           - The Integer page number.
    # all_posts      - The Array of all the site's Posts.
    # num_pages      - The Integer number of pages.
    # target_dir     - The String directory to paginate to.
    # category_tags  - The Array tag hierarchy this pager is under.
    # latest_authors - The Array of authors in this page set ordered by latest post.
    def initialize(site, page, all_posts, num_pages, target_dir, category_tags, latest_authors)
      @page = page
      @per_page = site.config['posts_pagecount'].to_i
      @total_pages = num_pages
      @tags = All.tags
      @top_tags = tags.values.sort_by{|tag| -tag.count}
      @category_tags = category_tags
      @latest_authors = latest_authors
      
      if @page > @total_pages
        raise RuntimeError, "page number can't be greater than total pages: #{@page} > #{@total_pages}"
      end
 
      init = (@page - 1) * @per_page
      offset = (init + @per_page - 1) >= all_posts.size ? all_posts.size : (init + @per_page - 1)
 
      @total_posts = all_posts.size
      @posts = all_posts[init..offset]
      @previous_page = @page != 1 ? @page - 1 : nil
      @previous_page_path = Pager.paginate_path(site, @previous_page, target_dir)
      @next_page = @page != @total_pages ? @page + 1 : nil
      @next_page_path = Pager.paginate_path(site, @next_page, target_dir)
    end
 
    # Convert this Pager's data to a Hash suitable for use by Liquid.
    #
    # Returns the Hash representation of this Pager.
    def to_liquid
      {
        'page' => page,
        'per_page' => per_page,
        'posts' => posts,
        'total_posts' => total_posts,
        'total_pages' => total_pages,
        'previous_page' => previous_page,
        'previous_page_path' => previous_page_path,
        'next_page' => next_page,
        'next_page_path' => next_page_path,
        'tags' => tags,
        'top_tags' => top_tags,
        'latest_authors' => latest_authors,
        'category' => category_tags.size > 0 ? category_tags[0] : nil,
        'channel' => category_tags.size > 1 ? category_tags[1] : nil
      }
    end
  end
end