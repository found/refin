class MembershipMailer < ActionMailer::Base
  helper :application
  default :from => "webinfochanges@camoh.org"
  
  def application_confirmation_member(member)
    @member = member
    mail(:from => "no-reply@camoh.org",
      :to => member.email, 
      :subject => 'Welcome to Christian Aid Ministries!',
      :body => "Thank you for signing up for the Christian Aid Ministries Donation System.  Your username is #{member.email}.  Please retain this for your records."
    )
    MembershipMailer.application_confirmation_admin(member).deliver
  end

  def application_confirmation_admin(member)
    @member = member
    mail(:from => "webinfochanges@camoh.org",
      :to => "webdonors@camoh.org",
      :subject => "CAM Donor Sign up: #{member.first_name} #{member.last_name} (#{member.email})")
  end

  def member_password_changed(member)
    @member = member
    mail(:to => member.email,
      :from => 'no-reply@camoh.org',
      :subject => "[CAM] Your profile was changed",
      :body => "Your donor profile password has been changd on the Christian Aid Ministries donation system.  If you feel this is in error, please try and login to your account and change your password.  If you cannot login to your account, please contact support@camoh.org"
    )
  end
  
  def member_update_profile(member)
    @member = member
    mail(:to => member.email,
      :from => "no-reply@camoh.org",
      :subject => "[CAM] Your profile was changed",
      :body => "Your donor profile has been updated on the Christian Aid Ministries donation system.  If you feel this is in error, please try and login to your account and change your password.  If you cannot login to your account, please contact support@camoh.org.  You can turn off these notifications from your donor dashboard on the 'Edit your Profile' page."
    )
  end
  
  def member_update_profile_notify_admin(member, changed=nil)
    begin
      @member = member
      mail(:from => "webinfochanges@camoh.org",
          :to => "webinfochanges@camoh.org",
          :subject => "[CAM] #{member.email} has updated their information",
          :body => "The member #{member.email} has updated their profile information or address.  They are now unverified in the system and their information needs to be reverified. The fields changed were: #{changed.join(",") rescue ""}."
      )
    rescue
      logger.debug("there was an error")
    end
  end
  
  def cancelled_subscription(member, subscription)
    begin
      @member = member
      mail(:to => member.email,
        :from => "no-reply@camoh.org",
        :subject => "[CAM] Your subscription has been cancelled",
        :body => "You have successfully cancelled your subscription for #{subscription.program.program_name}.  If you believe this is in error, please login to your account and check your active subscriptions."
      )
      MembershipMailer.cancelled_subscription_notify_admin(member, subscription).deliver
    rescue Exception => e
      logger.debug("Error in Cancel Subscription Mailer #{e.message}")
    end
  end
  
  def cancelled_subscription_notify_admin(member, subscription)
    @member = member
    @subscription = subscription
    mail(:to => "websponsormods@camoh.org",
        :from => "websponsormods@camoh.org",
        :subject => "[CAM] #{member.email} has cancelled a subscription."
    )
  end
  
  def comment_creation(contact, contact_instance)
    mail(:to => "#{contact.email}",
        :from => "no-reply@camoh.org",
        :subject => "[CAM] Contact Submittal",
    )
  end
  
  def comment_creation_notify_admin(contact, message)
    @contact = contact
    @message = message
    mail(:to => "webcomments@camoh.org",
        :from => "webcomments@camoh.org",
        :subject => "[CAM] New Contact Submittal"
    )
  end
  
  def newsletter_signup(contact)
    @contact = contact
    mail(:to => "#{contact.email}",
        :from => "no-reply@camoh.org",
        :subject => "[CAM] Newsletter Signup",
        :body => "Thank you for signing up for our monthly newsletter!  It should be arriving to you by mail within the next few weeks.  We look forward to building a great relationship with you in the future."
    )
  end
  
  def newsletter_removal_notify_admin(contact)
    @contact = contact
    mail(:to => "webnewslettersignups@camoh.org",
      :from => "webnewslettersignups@camoh.org",
      :subject => "[CAM] Newsletter Removal"
    )
  end
  
  def newsletter_signup_notify_admin(contact)
    @contact = contact
    mail(:to => "webnewslettersignups@camoh.org",
      :from => "webnewslettersignups@camoh.org",
      :subject => "[CAM] Newsletter Signup"
    )
  end
  
  def newsletter_signup_new_member_notify_admin(contact)
    @contact = contact
    mail(:to => "webnewslettersignups@camoh.org",
      :from => "webnewslettersignups@camoh.org",
      :subject => "[CAM] Newsletter Signup"
    )
  end
  
  def reset_notification(user, request)
    @user = user
    @url = edit_user_password_url(:host => request.host_with_port,
                                  :reset_password_token => @user.reset_password_token)
    @url = @url.gsub("users", "members")
    domain = request.domain(RefinerySetting.find_or_set(:tld_length, 1))

    mail(:to => user.email,
         :subject => "Link to reset your password",
         :from => "Christian Aid Ministries <webinfochanges@camoh.org>")
  end
  
  def order_complete_mailer(user, invoice)
    @user = user
    @invoice = invoice
    mail(:to => user.email,
        :subject => "[CAM] Donation to Christian Aid Ministries"  )
  end
  
  def order_receipt_mailer(user, invoice)
    @user = user
    @invoice = invoice
    mail(:to => @user.email,
        :subject => "[CAM] Receipt for Christian Aid Ministries"
    )
  end
  
  def monthly_receipt_mailer(invoice)
    logger.debug("in mailer")
    @invoice = invoice
    @email = Email.find(1)
    @email.invoice = invoice
    logger.debug("create mail")
    mail(to: @invoice.member.email,
        from: "no-reply@camoh.org",
        subject: @email.subject,
        bcc: @email.bcc,
        body: @email.clean_mah_body(invoice).html_safe
    )
  end
  
  def monthly_receipt_failed_mailer(invoice)
    @invoice = invoice
    @email = Email.find(2)
    @email.invoice = invoice
    mail(to: @invoice.member.email,
        from: "no-reply@camoh.org",
        subject: @email.subject,
        bcc: @email.bcc,
        body: @email.clean_mah_body(invoice).html_safe
    )
  end
  
  def test_monthly_receipt_mailer(invoice)
    logger.debug("in mailer")
    @invoice = invoice
    @email = Email.find(1)
    @email.invoice = invoice
    logger.debug("create mail")
    mail(to: 'webinfochanges@camoh.org',
        from: "no-reply@camoh.org",
        subject: @email.subject,
        bcc: @email.bcc,
        body: @email.clean_mah_body(invoice).html_safe
    )
  end
  
  def order_receipt_mailer_to_admin(user, invoice)
    @user = user
    @invoice = invoice
    mail(:to => "webinfochanges@camoh.org",
        :subject => "[CAM] Receipt for Christian Aid Ministries"
    )
  end
  
  def receipt_mailer_complete(invoices)
    @invoices = invoices
    mail(:to => "wsommers@camoh.org",
        :subject => "[CAM] Daily Receipt Mailing Completed"
    )
  end
  
  def subscription_adjustment_mailer(sub_adj)
    @subscription = sub_adj.subscription
    @donor = @subscription.member
    @adjustment = sub_adj
    @program = @subscription.program
    @invoice = @subscription.invoice
    mail(:to => @donor.email, :bcc => "support@wearefound.com, wsommers@camoh.org", :subject => "[CAM] Notice: Donation Adjustment")
  end
  
  def accepted_subscription_adjustment_mailer(sub_adj)
    @subscription = sub_adj.subscription
    @donor = @subscription.member
    @adjustment = sub_adj
    @program = @subscription.program
    @invoice = @subscription.invoice
    mail(:to => @donor.email, :bcc => "support@wearefound.com, wsommers@camoh.org", :subject => "[CAM] Notice: Donation Adjustment")
  end
  
  def deliver_silent_post(params)
    mail(:to => "kevin@wearefound.com;courtney@wearefound.com", :subject => "[CAM] A.Net Silent Post Jank", :body => params.inspect)
  end

  protected

  def url_prefix(request)
    "#{request.protocol}#{request.host_with_port}"
  end
end