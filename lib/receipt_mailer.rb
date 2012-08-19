module ReceiptMailer
  def self.start
    @invoices = []
    @receipts = Receipt.where(:sent => false).select{ |r| r.date_to_send.strftime("%m-%d-%Y") == Time.now.strftime("%m-%d-%Y") }
    puts "Receipts retrieved: #{@receipts.count}"
    @receipts.each do |r|
      begin
        return if r.cancelled?
        return if r.invoice.nil? 
        puts "Mailing for #{r.invoice.invoice_number}"
        begin 
          MembershipMailer.order_receipt_mailer(r.invoice.member, r.invoice).deliver
          @invoices << r.invoice
          r.update_attribute(:sent, true)
          puts "Receipt updated ##{r.id}"
        rescue Exception => e
          puts "Sending failed.  Not updating sent field: #{e.message}"
        end
      rescue Exception => e
        puts "overall exception: #{e.message}"
        return
      end
    end
    
    begin
      MembershipMailer.receipt_mailer_complete(@invoices).deliver
    rescue Exception => e
      puts "Couldnt email admin. #{e.message}"
    end
  end
end