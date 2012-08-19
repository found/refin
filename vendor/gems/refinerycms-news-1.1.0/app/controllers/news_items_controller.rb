class NewsItemsController < ApplicationController
  before_filter :find_page
  before_filter :find_published_news_items, :only => [:index]
  before_filter :find_news_item, :find_latest_news_items, :only => [:show]

  def index
    # render 'index'
    @title = "News Releases"

  end

  def show
    # render 'show'
  end
  
  def latest
    @news_items = NewsItem.published
    @news_item = NewsItem.last
    render 'show'
  end
  
  def newsletters
    @title = "Christian Aid Ministries Newsletters"
    @news_items = NewsItem.published.where({:news_type => "CAM Newsletter"}).translated.paginate(:page => params[:page], :per_page => NewsItem.per_page)
    render 'index'
  end
  
  def releases
    @title = "News Releases"
    @news_items = NewsItem.published.where({:news_type => "News Release"}).translated.paginate(:page => params[:page], :per_page => NewsItem.per_page)
    render 'index'
  end

protected

  def find_latest_news_items
    @news_items = NewsItem.latest.translated
  end

  def find_published_news_items
    @news_items = NewsItem.published.translated.paginate(:page => params[:page],
                                              :per_page => NewsItem.per_page)
  end

  def find_news_item
    @news_item = NewsItem.published.translated.find(params[:id])
  end

  def find_page
    @page = Page.find_by_link_url("/news")
  end

end
