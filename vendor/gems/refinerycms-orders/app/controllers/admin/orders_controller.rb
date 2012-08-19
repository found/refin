module Admin
  class OrdersController < Admin::BaseController
    require 'csv'
    # crudify :order, :xhr_paging => true, :except => "show"

    def index
      @errors = Invoice.find(:all, :conditions => {:settled => false}, :order => "id DESC", :include => [:member, :subscription, :line_items])
      @all_invoices = Invoice.find(:all, :order => "id DESC", :include => [:member, :subscription, :line_items])
      @invoices = @all_invoices.select{|i| i.settled == true && i.cancelled == false}
      @cancelled = @all_invoices.select{|i| i.cancelled == true}
    end
    
    def show
      logger.debug("IN show")
      @invoice = Invoice.find(params[:id])
    end         
    
    def export_to_csv
      @line_items = LineItem.find(:all, :include => [:program, :order, :invoice, {:invoice => [:member]}])
      csv_string = CSV.generate do |csv|
        logger.debug("In generate")
        # header row
        csv << ["account number", "id", "email", "name", "verified", "address", "city", "state", "phone", "zipcode", "country name", "country code", "program code", "program name", "donation type", "billing cycle", "payment method", "payment number", "amount", "timestamp", "status", "cancelled on", "notes", "receive newsletter" ]
        
        # data rows
        @line_items.select{ |i| !i.invoice.nil? }.each do |li|
          logger.debug("Processing: #{li.id}")
          inv = li.invoice
          pro = li.program
          logger.debug("Invoice: #{inv.id rescue "BLANK"}")
          logger.debug("Program: #{pro.id rescue "BLANK"}")
          logger.debug("Member: #{li.invoice.member.id rescue "BLANK"}")
          if inv && inv.member && !inv.exported? && pro
            logger.debug("Passes")
            
            donor = li.invoice.member
            
            if inv.subscription
              if inv.subscription.active?
                status = "Active Monthly"
              else
                status = "Cancelled"
              end
            else 
              status = "Paid"
            end
            
            csv << [
              (donor.donor_number rescue ""), 
              (inv.id rescue ""), 
              (donor.email rescue ""), 
              (donor.full_name rescue ""), 
              (donor.verified? ? "Yes" : "No"),
              (donor.billing_address_for_export rescue ""), 
              (donor.billing_address_from_db.city rescue ""),
              (donor.billing_address_from_db.state rescue ""),
              (donor.phone rescue ""), 
              (donor.billing_address_from_db.postal_code rescue ""), 
              (donor.billing_address_from_db.country.country_name rescue ""),
              (donor.billing_address_from_db.country.country_code rescue ""),
              (pro.abbreviation rescue ""),
              (pro.program_name rescue ""),
              ("#{li.recurring? ? 'monthly' : 'one-time'}"),
              ("#{li.recurring? ? inv.subscription.subscription_type.day : '0'}"),
              (inv.payment_method rescue ""),
              (inv.payment_number rescue ""),
              ("#{li.price * li.quantity rescue ""}"),
              (inv.created_at rescue ""),
              (status rescue ""),
              (inv.subscription.end_date.strftime("%D") rescue ""),
              (inv.notes rescue ""),
              (member.contact.newsletter_recipient rescue "false")
            ]
          end
        end
      end
      
      @line_items.select{|i| !i.invoice.nil? }.each do |li|
        begin
          li.invoice.update_attribute(:exported, true)
        rescue Exception => e
          logger.debug("couldnt update exported invoice #{e.inspect}")
        end
      end
      # send it to the browsah
      send_data csv_string, 
        :type => "text/csv; charset=iso-8859-1; header=present", 
        :disposition => "attachment; filename=donation_export_#{Time.now.strftime("%b_%d_%Y")}.csv"
      logger.debug("done with sendfile")
    end
    
    def reconcile_empty_orders
      @orders = Order.where(:item_total => nil, :total => nil).select{|o| o.updated_at < Time.now - 1.hour}
      logger.debug("Starting to clear #{@orders.count} orders")
      @orders.each do |o|
        logger.debug("Clearing #{o.id}")
        o.destroy
      end
      redirect_to '/refinery/orders/'
    end
    
    def cancel_email_receipt
      @invoice = Invoice.find(params[:id])
      
      if @invoice
        @invoice.receipt.update_attributes({ :cancelled => true, :date_cancelled => Time.now })
        redirect_to :back, :notice => "Email receipt cancelled successfully."
      end
    end
    
    def enable_email_receipt
      @invoice = Invoice.find(params[:id])
      
      if @invoice
        @invoice.receipt.update_attributes({ :cancelled => false, :date_cancelled => nil })
        redirect_to :back, :notice => "Email receipt has been enabled for auto-delivery."
      end
    end
    
    def send_email_receipt
      @invoice = Invoice.find(params[:id])
      
      if @invoice
        MembershipMailer.order_receipt_mailer(@invoice.member, @invoice).deliver
        redirect_to :back, :notice => "Email successfully re-sent."
      else
        redirect_to :back, :notice => "Unfortunately, something went wrong."
      end
    end
    
    def send_email_receipt_to_admin
      @invoice = Invoice.find(params[:id])
      
      if @invoice
        MembershipMailer.order_receipt_mailer_to_admin(@invoice.member, @invoice).deliver
        redirect_to :back, :notice => "Email successfully sent to webinfochanges@camoh.org."
      else
        redirect_to :back, :notice => "Unfortunately, something went wrong."
      end
    end
    
    def cancel_invoice
      @invoice = Invoice.find(params[:id])
      
      if @invoice
        if params[:passphrase] != "!2_cancel_invoice!"
          if @invoice.update_attributes({:cancelled => true, :cancelled_on => Time.now})
            redirect_to :back, :notice => "Invoice was cancelled."
          else
            redirect_to :back, :notice => "There was an error cancelling it."
          end
        else
          redirect_to :back, :error => "Incorrect passphrase."
        end
      else
        redirect_to :back, :notice => "Hm. That invoice wasn't found."
      end
    end

    def uncancel_invoice
      @invoice = Invoice.find(params[:id])
    
      if @invoice
        if params[:passphrase] != "!2_cancel_invoice!"
          if @invoice.update_attributes({:cancelled => false, :cancelled_on => nil})
            redirect_to :back, :notice => "Invoice was un-cancelled."
          else
            redirect_to :back, :notice => "There was an error un-cancelling it."
          end
        else
          redirect_to :back, :error => "Incorrect passphrase."
        end
      else
        redirect_to :back, :notice => "Hm. That invoice wasn't found."
      end
    end
    
    def destroy
      @invoice = Invoice.find(params[:id])
      
      if @invoice
        if params[:passphrase] != "authorized!"
          if @invoice.destroy
            redirect_to admin_orders_path, :notice => "Invoice was destroyed."
          else
            redirect_to admin_orders_path, :notice => "There was an error destroying it."
          end
        else
          redirect_to admin_orders_path, :error => "Incorrect passphrase."
        end
      else
        redirect_to admin_orders_path, :notice => "Hmmm. That invoice wasn't found."
      end
    end
  end
end
