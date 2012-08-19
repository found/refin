require 'authorize-net'
class ProgramsController < ApplicationController

  before_filter :find_all_programs
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @program in the line below:
    @categories = Category.find(:all, :include => [:cat_prog_juncs, [:cat_prog_juncs, :programs]])
    @programs = Program.where(:disabled => false)
    present(@page)
  end

  def show
    @program = Program.find(params[:id])
    @order = current_cart
    @payment_profiles = []
    if current_member
      @payment_profiles = current_member.get_payment_profiles
    end
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @program in the line below:
    present(@page)
  end
  
  def donate
    @programs = Program.where(:disabled => false)
    @categories = Category.find(:all, :include => [:cat_prog_juncs, [:cat_prog_juncs, :programs]])
    @order = current_cart
    @payment_profiles = []
    if current_member
      @payment_profiles = current_member.get_payment_profiles
    end
  end
  
  def process_program
    if current_member
      response = Program.new.process_program(params)
      if response == true
        redirect_to "/donors/me", :notice => "Your subscription was created.  You can view your invoices from the Donor Dashboard."
      else
        redirect_to :back, :notice => "Please chcek your payment information before proceeding."
      end
    end
  end

protected

  def find_all_programs
    @programs = Program.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/programs").first
  end

end
