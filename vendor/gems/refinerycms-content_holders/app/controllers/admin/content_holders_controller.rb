module Admin
  class ContentHoldersController < Admin::BaseController

    crudify :content_holder, :xhr_paging => true

  end
end
