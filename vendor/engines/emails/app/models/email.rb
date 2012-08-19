class Email < ActiveRecord::Base

  acts_as_indexed :fields => [:subject, :from, :bcc, :body, :template_model]

  validates :subject, :presence => true, :uniqueness => true
  attr_accessor :invoice
  
  def clean_mah_body(invoice)
    self.parse_template_tags
    return self.body
  end
  
  def parse_template_tags
    {
      first_name: "first_name",
      last_name: "last_name",
      subscription_amount: "subscription_amount",
      program_name: "program_name",
      subscription_start_date: "subscription_start_date",
      subscription_payment_method: "subscription_payment_method",
      subscription_payment_number: "subscription_payment_number",
      subscription_sequence: "subscription_sequence",
      invoice_disclaimer: "invoice_disclaimer",
      monthly_transaction_id: "monthly_transaction_id"
    }.each do |k,v|
      while self.body.include?("{{ #{k} }}")
        self.body = self.body.gsub(/#{self.body.match("{{ #{k} }}")[0]}/, self.invoice.send(v.to_sym))
      end
    end
  end
  
end