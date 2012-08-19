require 'spec_helper'

describe Category do

  def reset_category(options = {})
    @valid_attributes = {
      :id => 1,
      :category_name => "RSpec is great for testing too"
    }

    @category.destroy! if @category
    @category = Category.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_category
  end

  context "validations" do
    
    it "rejects empty category_name" do
      Category.new(@valid_attributes.merge(:category_name => "")).should_not be_valid
    end

    it "rejects non unique category_name" do
      # as one gets created before each spec by reset_category
      Category.new(@valid_attributes).should_not be_valid
    end
    
  end

end