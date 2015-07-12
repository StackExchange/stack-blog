# Stack Exchange modified paging plugin, based on a custom tag pagination plugin:
# https://divshot.com/blog/web-development/advanced-jekyll-features/#pagination-with-category
# by Jake Johnson
module Jekyll
  class Page
    attr_accessor :dir
  end

  # Wraps a Jekyll post and pre-renders the list view of it once for re-use in many views
  class PreRenderedPost
    attr_accessor :post, :pre_render, :tags, :date
    def initialize(site, post)
      @post = post
      @tags = post.tags
      @date = post.date

      payload = Utils.deep_merge_hashes({
        'post' => post.to_liquid
      }, site.site_payload)
      layout = site.layouts['list-post']
      info = { :filters => [Jekyll::Filters], :registers => { :site => site, :page => payload['page'] } }
      @pre_render = post.render_liquid(layout.content, payload, info, File.join(site.config['layouts'], layout.name))
    end

    def to_s
      @pre_render || ''
    end

    def to_liquid(attrs = nil)
      Utils.deep_merge_hashes({
        'pre_render' => @pre_render
      }, @post.to_liquid(attrs))
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

    def add(pre_post)
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
    attr_accessor :id, :url, :name, :avatar, :twitter, :website, :job, :posts

    def initialize(site, id)
      author_doc = site.collections['authors'].docs.find{|doc| doc.data['id'] == id}
      if author_doc.nil?
        Jekyll.logger.warn "Author #{id} was not found in _authors."
      end

      author_data = author_doc.data
      @id = id
      @url = "#{site.baseurl}/authors/#{id}"
      @name = author_data['name']
      @avatar = author_data['avatar']
      @twitter = author_data['twitter']
      @website = author_data['website']
      @job = author_data['job']
    end

    def add(pre_post)
      @posts << pre_post
    end

    def post_count
      @posts.size
    end

    def to_liquid(attrs = nil)
      {
        'id' => id,
        'name' => name,
        'avatar' => avatar,
        'twitter' => twitter,
        'url' => url,
        'job' => job,
        'posts' => posts
      }
    end
  end
 
  module Generators
    class Pagination < Generator
      # This generator is safe from arbitrary code execution.
      safe true
 
      # Generate paginated pages if necessary.
      #
      # site - The Site.
      #
      # Returns nothing.
      def generate(site)

        post_tags = [] 
        @pre_posts = []
        @pre_tags = Hash.new { |hash, key| hash[key] = Tag.new(key) }

        # Here we want to pre-render all the posts once rather than once for each pagining permutation they appear in
        Jekyll.logger.info 'Starting: pre-generation of all list posts'

        for post in site.posts
          pre_post = PreRenderedPost.new(site, post)
          @pre_posts << pre_post

          for tag in post.tags
            @pre_tags[tag].add(pre_post)
          end
        end

        Jekyll.logger.info 'Finished: pre-generation of all list posts'
        paginate(site, '', [])
        paginate_channels(site, 'engineering', ['design', 'development', 'evangelism', 'opinion', 'sysadmin'])
        paginate_channels(site, 'company', ['announcements', 'community', 'culture', 'diversity', 'podcasts'])

        Jekyll.logger.info "Generating tag pages for #{@pre_tags.count} tag(s):"
        @pre_tags.each do |key, tag|
          paginate(site, '/tags/:tags', [key], 'tag.html')
        end

      end

      def paginate_channels(site, category, channels)
        # Generate main category, e.g. /engineering
        paginate(site, '/:tags', [category], category + '.html')

        # Generate all sub-channels
        for channel in channels
          paginate(site, '/:tags', [category, channel], category + '.html')
        end
      end
 
      # Paginates the blog's posts. Renders the index.html file into paginated
      # directories, e.g.: page2/index.html, page3/index.html, etc and adds more
      # site-wide data.
      #
      # site - The Site.
      # page - The index.html Page that requires pagination.
      #
      # {"paginator" => { "page" => <Number>,
      #                   "per_page" => <Number>,
      #                   "posts" => [<Post>],
      #                   "total_posts" => <Number>,
      #                   "total_pages" => <Number>,
      #                   "previous_page" => <Number>,
      #                   "next_page" => <Number> }}
      def paginate(site, path = '/:tags/', category_tags = [], layout_source = nil)

        path = path.sub(':tags', category_tags.join("/"))

        posts = @pre_posts
        for tag in category_tags
          posts = posts.find_all{|post| post.tags.include?(tag)}
        end

        if site.config['posts_showdrafts'] != 'true'
          posts = posts.find_all{|post| post.post.data['draft'] != true && (post.date.nil? || post.date < site.time)}
        end
        posts = posts.sort_by {|post| -post.date.to_f}

        # Note: authors collection is per-collection inside the pagination, since the authors
        # displayed are the authors for the current post list. They are added in post (reverse-chronological)
        # order, meaning by recency as a result.
        author_ids = []
        for post in posts
          author_id = post.post.data['author']
          unless author_ids.include?(author_id)
             author_ids << author_id
          end
        end
        latest_authors = author_ids.map{|id| Author.new(site, id)}
 
        # Calculate the number of pages overall
        pages = Pager.calculate_pages(posts, site.config['posts_pagecount'].to_i)
        # Output for the console
        Jekyll.logger.info("  [#{(category_tags.count == 0 ? "<all>" : category_tags.join(","))}] (#{path}) => #{posts.count} post(s), #{pages} page(s)")
        # Generate each page in the set
        (1..pages).each do |num_page|
          # The pager itself, outputs the paginator object in Liquid
          pager = Pager.new(site, num_page, posts, pages, path + "/", @pre_tags, category_tags, latest_authors)
          # The page itself, ALL are created in the paginator because none exist as .html for input
          newpage = Page.new(site, site.source, layout_source ? site.config['layouts'] : path + "/", layout_source || 'index.html')
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
    # config    - The Hash configuration of the site.
    # page      - The Integer page number.
    # all_posts - The Array of all the site's Posts.
    # num_pages - The Integer number of pages or nil if you'd like the number
    # target_dir- The String directory to paginate to
    # tags      - The Hash of tags on all posts
    #             of pages calculated.
    def initialize(site, page, all_posts, num_pages = nil, target_dir, tags, category_tags, latest_authors)
      @page = page
      @per_page = site.config['posts_pagecount'].to_i
      @total_pages = num_pages || Pager.calculate_pages(all_posts, @per_page)
      @tags = tags
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