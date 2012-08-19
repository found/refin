require 'spec_helper'

describe Program do

  def reset_program(options = {})
    @valid_attributes = {
      :id => 1,
      :program_name => "RSpec is great for testing too"
    }

    @program.destroy! if @program
    @program = Program.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_program
  end

  context "validations" do
    
    it "rejects empty program_name" do
      Program.new(@valid_attributes.merge(:program_name => "")).should_not be_valid
    end

    it "rejects non unique program_name" do
      # as one gets created before each spec by reset_program
      Program.new(@valid_attributes).should_not be_valid
    end
    
  end

end