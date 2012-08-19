module Admin
  class EmailsController < Admin::BaseController

    crudify :email,
            :title_attribute => 'subject', :xhr_paging => true

  def mail_a_test
    s = SubscriptionTransaction.first
    MembershipMailer.test_monthly_receipt_mailer(s.subscription.invoice).deliver
    render :text => "Sent to webinfochanges@camoh.org" and return
  end
  end
end
