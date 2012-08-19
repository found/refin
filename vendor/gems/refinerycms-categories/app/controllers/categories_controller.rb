class CategoriesController < ApplicationController

  before_filter :find_all_categories
  before_filter :find_page

  def index
    redirect_to "/programs"
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @category in the line below:
    present(@page)
  end

  def show
    redirect_to "/programs"
    @category = Category.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @category in the line below:
    present(@page)
  end

protected

  def find_all_categories
    @categories = Category.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/categories").first
  end

end
