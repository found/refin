class Invoice < ActiveRecord::Base
  belongs_to :member
  belongs_to :transaction
  belongs_to :order
  belongs_to :payment_profile
  
  has_many :line_items
  has_one :subscription
  has_one :receipt
  
  validates_presence_of :amount, :member_id
  validates_numericality_of :amount
  
  after_save :create_receipt
  
  def invoice_number
    str = "INV-#{self.id}"
    case self.id.to_s.length
    when 1
      str = "INV-00"
    when 2
      str = "INV-0"
    else
      str = "INV-"
    end
    return "#{str}#{self.id}"
  end
  
  def has_subscriptions?
    self.line_items.each do |li|
      return true if li.recurring == true
    end
    return false
  end
  
  def has_one_times?
    self.line_items.each do |li|
      return true if li.recurring == false
    end
    return false    
  end
  
  def view_status
    str = ""
    if self.subscription && self.subscription.active?
      str = "Billed Monthly"
    elsif self.subscription && !self.subscription.active?
      str = "User Cancelled"
    elsif self.has_one_times? && self.settled? && !self.cancelled?
      str = "Settled"
    elsif self.cancelled?
      str = "Admin Cancelled"
    else 
      str = "Error"
    end
    return str
  end
  
  def view_status_html
    str = "<strong>"
    if self.subscription && self.subscription.active?
      str += "Billed Monthly"
    elsif self.subscription && !self.subscription.active?
      str += "<font color='red'>User Cancelled</font>"
    elsif self.has_one_times? && self.settled? && !self.cancelled?
      str += "Settled"
    elsif self.cancelled?
      str += "Admin Cancelled"
    else 
      str += "<font color='red'>Error</font>"
    end
    str += "</strong>"
    return str
  end
  
  def first_name
    return self.member.first_name rescue ""
  end
  
  def last_name
    return self.member.last_name rescue ""
  end
  
  def subscription_amount
    str = "$"
    self.line_items.each do |li|
			dec = li.quantity * li.price.to_f
	    if dec.to_s.split(".")[1].length == 1
	      str += dec.to_s + "0"
	    elsif dec.to_s.split(".").count == 1
	      str += dec.to_s + ".00"
	    else 
	      str += dec.to_s
	    end
	  end
	  return str
  end
  
  def program_name
    return self.line_items.select{|li| li.recurring? }.first.program.program_name rescue ""
  end
  
  def subscription_start_date
    return DateTime.parse(self.subscription.start_date).strftime("%B %d, %Y") rescue ""
  end
  
  def subscription_payment_method
    return self.payment_method rescue ""
  end
  
  def subscription_payment_number
    return self.payment_number rescue ""
  end
  
  def subscription_sequence
    return (self.subscription.subscription_type.title.gsub("the", "every")).downcase rescue ""
  end
  
  def invoice_disclaimer
    return ContentHolder.find(111).body.gsub(/(<[^>]*>)|\t/s, "") rescue ""
  end
  
  def monthly_transaction_id
    return (self.subscription.subscription_transactions.last.id.to_s) rescue ""
  end
  
  def subscription_id
    return (self.subscription.arb_subscription_id.to_s) rescue ""
  end
  protected
  
  def create_receipt
    if self.settled == true && self.receipt.nil?
      @receipt = Receipt.new
      @receipt.invoice_id = self.id
      @receipt.date_to_send = self.created_at + 7.days
      @receipt.save
    else
      logger.debug("Invoice hasn't been settled so no receipt!")
    end
  end
end