require 'spec_helper'

describe Subscription do

  def reset_subscription(options = {})
    @valid_attributes = {
      :id => 1
    }

    @subscription.destroy! if @subscription
    @subscription = Subscription.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_subscription
  end

  context "validations" do
    
  end

end