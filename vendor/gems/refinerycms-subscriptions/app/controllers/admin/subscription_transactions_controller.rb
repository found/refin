module Admin
  class SubscriptionTransactionsController < Admin::BaseController
    
    def new
      @subscription_transaction = SubscriptionTransaction.new
    end
  end
end