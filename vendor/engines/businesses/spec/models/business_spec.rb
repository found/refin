require 'spec_helper'

describe Business do

  def reset_business(options = {})
    @valid_attributes = {
      :id => 1,
      :name => "RSpec is great for testing too"
    }

    @business.destroy! if @business
    @business = Business.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_business
  end

  context "validations" do
    
    it "rejects empty name" do
      Business.new(@valid_attributes.merge(:name => "")).should_not be_valid
    end

    it "rejects non unique name" do
      # as one gets created before each spec by reset_business
      Business.new(@valid_attributes).should_not be_valid
    end
    
  end

end