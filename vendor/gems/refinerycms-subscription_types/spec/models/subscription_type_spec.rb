require 'spec_helper'

describe SubscriptionType do

  def reset_subscription_type(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @subscription_type.destroy! if @subscription_type
    @subscription_type = SubscriptionType.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_subscription_type
  end

  context "validations" do
    
    it "rejects empty title" do
      SubscriptionType.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_subscription_type
      SubscriptionType.new(@valid_attributes).should_not be_valid
    end
    
  end

end