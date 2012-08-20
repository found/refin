module Admin
  class BusinessesController < Admin::BaseController

    crudify :business,
            :title_attribute => 'name', :xhr_paging => true

  end
end
