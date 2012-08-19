class Contact < ActiveRecord::Base
  has_many :contact_instances
  belongs_to :member
  
  acts_as_indexed :fields => [:email, :first_name, :last_name, :address_1, :address_2, :city, :state, :postal_code]

  validates :email, :presence => true, :uniqueness => true
  after_save :member_check

  protected
  
  def member_check
    if self.member_id.nil?
      member = Member.find_by_email(self.email)
      if member
        self.update_attribute(:member_id, member.id)
      end
    end
  end
end
