class SearchController < ApplicationController

	# Display search results given the query supplied
  def show
    @results = SearchEngine.search(params[:query], params[:page])
    @objects = {}
    @categories = []
    @pages = []
    @programs = []
    @news_items = []
    @results.each do |result|
      c = result.class.to_s
      if c == "Category"
        @categories << result
      elsif c == "Page"
        @pages << result
      elsif c == "Program"
        @programs << result
      elsif c == "NewsItem"
        @news_items << result
      end
    end
    
    @objects[:categories] = @categories if !@categories.empty?
    @objects[:pages] = @pages if !@pages.empty?
    @objects[:programs] = @programs.reject{ |p| p.disabled? } if !@programs.empty?
    @objects[:news] = @news_items if !@news_items.empty?
    
    present(@page = Page.find_by_link_url("/search"))
  end

end