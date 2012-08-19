require 'spec_helper'

describe ContentHolder do

  def reset_content_holder(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @content_holder.destroy! if @content_holder
    @content_holder = ContentHolder.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_content_holder
  end

  context "validations" do
    
    it "rejects empty title" do
      ContentHolder.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_content_holder
      ContentHolder.new(@valid_attributes).should_not be_valid
    end
    
  end

end