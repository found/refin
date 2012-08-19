class InvoicesController < ApplicationController
  before_filter :authenticate_member!, :except => [:create]

  def index
    redirect_to "/invoices/my_invoices"
  end
  
  def my_invoices
    @invoices = Invoice.all(:conditions => {:member_id => current_member.id}, :order => "updated_at DESC")
  end

  def show
    if current_member
      @invoice = Invoice.find(params[:id])
      if @invoice && @invoice.member_id == current_member.id
        respond_to do |format|
          format.html # show.html.erb
          format.xml  { render :xml => @invoice }
        end
      else
        redirect_to "/", :notice => "You are not authorized to see that." and return
      end
    else
      redirect_to "/" , :notice => "You fail." and return
    end
  end

  def new
    @invoice = Invoice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @invoice }
    end
  end

  def edit
    @invoice = Invoice.find(params[:id])
  end

  def create
    @invoice = Invoice.new(params[:invoice])

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to(@invoice, :notice => 'Invoice was successfully created.') }
        format.xml  { render :xml => @invoice, :status => :created, :location => @invoice }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @invoice.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @invoice = Invoice.find(params[:id])

    respond_to do |format|
      if @invoice.update_attributes(params[:invoice])
        format.html { redirect_to(@invoice, :notice => 'Invoice was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @invoice.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy

    respond_to do |format|
      format.html { redirect_to(invoices_url) }
      format.xml  { head :ok }
    end
  end
end
