class ContactInstance < ActiveRecord::Base
  belongs_to :contact
  
  after_create :send_emails
  
  
  protected
  def send_emails
    if self.contact.newsletter_recipient == true
      if self.contact.email && !self.contact.email.include?("nonymous")
        if self.contact.member
          diff = self.contact.created_at.to_i - self.contact.member.created_at.to_i
          MembershipMailer.newsletter_signup(self.contact).deliver unless diff < 60
          MembershipMailer.newsletter_signup_new_member_notify_admin(self.contact).deliver
        else
          MembershipMailer.newsletter_signup(self.contact).deliver
          MembershipMailer.newsletter_signup_notify_admin(self.contact).deliver
        end
      else
        MembershipMailer.newsletter_signup_notify_admin(self.contact).deliver
      end
    else
      if self.contact.email.nil? || self.contact.email.include?("nonymous")
        # return
      else
        MembershipMailer.comment_creation(self.contact, self).deliver
      end
    end
     MembershipMailer.comment_creation_notify_admin(self.contact, self.message).deliver
  end
end