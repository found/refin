require 'spec_helper'

describe Meeting do

  def reset_meeting(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @meeting.destroy! if @meeting
    @meeting = Meeting.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_meeting
  end

  context "validations" do
    
    it "rejects empty title" do
      Meeting.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_meeting
      Meeting.new(@valid_attributes).should_not be_valid
    end
    
  end

end