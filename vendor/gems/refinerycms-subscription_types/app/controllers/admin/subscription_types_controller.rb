module Admin
  class SubscriptionTypesController < Admin::BaseController

    crudify :subscription_type, :xhr_paging => true

  end
end
