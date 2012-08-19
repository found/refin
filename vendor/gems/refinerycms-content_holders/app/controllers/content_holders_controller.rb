class ContentHoldersController < ApplicationController

  before_filter :find_all_content_holders
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @content_holder in the line below:
    present(@page)
  end

  def show
    @content_holder = ContentHolder.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @content_holder in the line below:
    present(@page)
  end

protected

  def find_all_content_holders
    @content_holders = ContentHolder.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/content_holders").first
  end

end
