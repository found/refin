class SubscriptionTypesController < ApplicationController

  before_filter :find_all_subscription_types
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @subscription_type in the line below:
    present(@page)
  end

  def show
    @subscription_type = SubscriptionType.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @subscription_type in the line below:
    present(@page)
  end

protected

  def find_all_subscription_types
    @subscription_types = SubscriptionType.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/subscription_types").first
  end

end
