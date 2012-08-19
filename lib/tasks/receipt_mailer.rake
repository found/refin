require 'receipt_mailer'

desc "Email out receipts for today"
task :deliver_receipt => :environment do
  ReceiptMailer.start
end