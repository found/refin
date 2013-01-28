module Admin
  class NewsItemsController < Admin::BaseController

    crudify :news_item, :xhr_paging => true, :order => "publish_date DESC"

  end
end
