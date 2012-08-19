require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Order" do
  before(:all) do
    @params_for_cc = { :payment_type => "cc", :contribution => { "expiry_month(2i)" => "11", "expiry_year(1i)" => "2013", :number => "4007000000027", :ccv => "123" } }
    @params_for_bank_checking = { :payment_type => "bank", :contribution => { :bank_name => "BB&T", :account_type => "checking", :routing_number => "051404260", :account_number => "0000156651249" } }
    @params_for_bank_savings = { :payment_type => "bank", :contribution => { :bank_name => "BB&T", :account_type => "savings", :routing_number => "051404260", :account_number => "0000156651249" } }
  end
  
  context "member not logged in" do
    context "creating a new order" do
      before(:all) do
        @order = FactoryGirl.create(:new_order)
      end
      
      it "should be valid" do
        @order.valid?
      end
      
      it "should not have a member" do
        @order.member.nil?
      end
      
      it "should not have any line items" do
        @order.line_items.nil?
      end
      
      it "should have an in_cart_count of 0" do
        @order.in_cart_count == 0
      end
      
      it "should have a subscription total of 0" do
        @order.subscription_total == 0
      end
      
      it "should have a one-time total of 0" do
        @order.one_time_total == 0
      end
      
      it "should calculate total of 0" do
        @order.calculate!
        @order.total == 0
      end
    end
    
    context "order with no items" do
      before(:all) do
        @order = FactoryGirl.create(:new_order)
      end
      
      it "should have no items" do
        @order.line_items.count == 0
      end
      
      it "should not process successfully without items or a member" do
        response = @order.process_one_times(@params_for_cc)
        response == false
      end
    end
    
    context "adding an item to new order" do
      before(:each) do
        @order = Factory.create(:new_order)
        @program = Factory.create(:one_time_program)
      end
      
      it "should respond to add_item" do
        @order.should respond_to("add_item")
      end
      
      it "should require parameters when adding an item" do
        @order.add_item == false
      end
      
      it "should add an item when parameters are passed" do
        @order.add_item(@program) == true
      end
      
      it "should contain a line_item after adding an item" do
        @order.add_item(@program)
        @order.line_items.count > 0
      end
    end
    
    context "an order with a one-time donation" do
      before(:each) do
        @order = Factory.create(:new_order)
        @program = Factory.create(:one_time_program)
        @order.add_item(@program, 1, "10.00", "one_time")
      end
      
      it "should have an item_total of 10" do
        @order.item_total == 10
      end
      
      it "should have a total value of 10" do
        @order.total == 10
      end
      
      it "should have a one_time_total of 10" do
        @order.one_time_total == 10
      end
      
      it "should be in order state of 1" do
        @order.order_state_id == 1
      end
      
      it "should have a line_item" do
        @order.line_items.nil? == false
      end
      
      it "should respond true to has_items?" do
        @order.has_items?
      end
      
      it "should return an in_cart_count of 1" do
        @order.in_cart_count == 1
      end
      
      it "should respond true to has_one_times?" do
        @order.has_one_times?
      end
      
      it "should respond false to has_subscriptions?" do
        @order.has_subscriptions?
      end
      
      it "should respond to removing_item" do
        @order.remove_item(@order.line_items.first.id) == true
      end
    end
    
    context "order and member association" do
      before(:each) do
        @order = Factory.create(:new_order)
        @member = Factory.build(:member)
        @member.save
      end
      
      it "should start with no member associated" do
        @order.member.nil?
      end
      
      it "should allow association of member" do
        @member.orders << @order
        @order.member.nil? == false
      end
      
      it "should belong to member after association" do
        @member.orders << @order
        @member.orders.count == 1
      end
    end
  end
  
  context "member logged in" do
    before(:all) do
      @member = Factory.build(:member)
      @member.save
      @order = Factory.create(:new_order, :member => @member)
    end
    
    it "should be valid" do
      @order.valid?
    end
    
    it "should have a member associated" do
      @order.member.first_name == @member.first_name
    end
    
    context "order with a one time donation" do
      before(:each) do
        @program = Factory.create(:one_time_program)
      end
      it "should add an item when parameters are passed" do
        @order.add_item(@program, 1, 10.50, "one-time") 
        @order.line_items.count == 1 && @order.line_items[0].recurring? == false
      end
      
      it "should respond true to has_one_times?" do
        @order.add_item(@program, 1, 10.50, "one-time") 
        @order.has_one_times? == true
      end
      
      it "should respond false to has_subscriptions?" do
        @order.add_item(@program, 1, 10.50, "one-time") 
        @order.has_subscriptions? == false
      end
      
      it "should hae a total of 10.50" do
        @order.add_item(@program, 1, 10.50, "one-time") 
        @order.total == 10.50
      end
      
      it "should have an order_state_id of 1" do
        @order.order_state_id == 1
      end

      context "processing no payment profile" do
        context "credit card processing" do
          before(:all) do
            @order.process_one_times(@params_for_cc)
          end
          
          it "should allow processing with a valid credit card" do
            @order.order_state_id == 3
          end
          
          it "should have a invoice object" do
            @order.invoices.nil? == false
          end
        end
        
        context "bank processing" do
          context "checking account" do
            before(:all) do
              @response = @order.process_one_times(@params_for_bank_checking)
            end
            
            it "should allow processing with a checking account" do
              @order.order_state_id == 3 && @response == true
            end
            
            it "should have an invoice object" do
              @order.invoices.nil? == false
            end
          end
          context "savings account" do
            before(:all) do
              @response = @order.process_one_times(@params_for_bank_savings)
            end
            
            it "should allow processing with a savings account" do
              @order.order_state_id == 3 && @response == true
            end
            
            it "should have an invoice object" do
              @order.invoices.nil? == false
            end
          end
        end
      end
    end
    
    context "order with a monthly donation" do
      before(:each) do
        @program = Factory.create(:monthly_program)
      end
      it "should add an item when parameters are passed" do
        @order.add_item(@program, 1, 10.50, "monthly")
        @order.line_items.count == 1 && @order.line_items[0].recurring?
      end
      
      it "should respond false to has_one_times?" do
        @order.add_item(@program, 1, 10.50, "monthly")
        @order.has_one_times? == false
      end
      
      it "should respond true to has_subscriptions?" do
        @order.add_item(@program, 1, 10.50, "monthly")
        @order.has_subscriptions? == true
      end
      
      it "should have a total of 10.50" do
        @order.total == 10.50
      end
      
      it "should have an order_state_id of 1" do
        @order.order_state_id == 1
      end
      
      context "processing no payment profile" do
        context "credit card processing" do
          before(:all) do
            @order.process_subscriptions(@params_for_cc)
          end
          
          it "should allow processing with a valid credit card" do
            @order.order_state_id == 3
          end
          
          it "should have an invoice object" do
            @order.invoices.nil? == false
          end
        end
        context "bank processing" do
          context "checking account" do
            before(:all) do
              @response = @order.process_subscriptions(@params_for_bank_checking)
            end
            
            it "should allow processing with a checking account" do
              @order.order_state_id == 3 && @response == true
            end
            
            it "should have an invoice object" do
              @order.invoices.nil? == false
            end
          end
          context "savings account" do
            before(:all) do
              @response = @order.process_subscriptions(@params_for_bank_savings)
            end
            
            it "should allow processing with a savings account" do
              @order.order_state_id == 3 && @response == true
            end
            
            it "should have an invoice object" do
              @order.invoices.nil? == false
            end
          end
        end
      end
    end
  end
end