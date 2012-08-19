require 'spec_helper'

describe Order do

  def reset_order(options = {})
    @valid_attributes = {
      :id => 1
    }

    @order.destroy! if @order
    @order = Order.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_order
  end

  context "validations" do
    
  end

end