require 'spec_helper'

describe Email do

  def reset_email(options = {})
    @valid_attributes = {
      :id => 1,
      :subject => "RSpec is great for testing too"
    }

    @email.destroy! if @email
    @email = Email.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_email
  end

  context "validations" do
    
    it "rejects empty subject" do
      Email.new(@valid_attributes.merge(:subject => "")).should_not be_valid
    end

    it "rejects non unique subject" do
      # as one gets created before each spec by reset_email
      Email.new(@valid_attributes).should_not be_valid
    end
    
  end

end