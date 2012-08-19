module CallbackHandler
  class SilentPost
    attr_accessor :response_code, :response_reason, :transaction_id, :arb_id, :payment_count, :amount
    
    def initialize(args)
      @response_code = args["x_response_code"].to_i || nil
      @response_reason = args["x_response_reason_text"] || nil
      @transaction_id = args["x_trans_id"] || nil
      @arb_id = args["x_subscription_id"].to_i || nil
      @payment_count = args["x_subscription_paynum"].to_i || nil
      @amount = args["x_amount"] || 0.00
    end
    
    def parse
      return true if self.arb_id.nil?
      
      subscription = Subscription.find_by_arb_subscription_id(self.arb_id)
      return false if subscription.nil?
      sub_tranny = SubscriptionTransaction.create({
        subscription_id: subscription.id,
        response_code: self.response_code,
        response_reason: self.response_reason,
        transaction_id: self.transaction_id,
        payment_count: self.payment_count,
        amount: self.amount,
        success: (self.response_code == 1 ? true : false)
      })  
      
      if sub_tranny
        puts("Inv: #{subscription.invoice.inspect}")
        return true
      else
        return false
      end
    end
  end
end