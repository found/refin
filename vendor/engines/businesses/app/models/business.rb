class Business < ActiveRecord::Base

  acts_as_indexed :fields => [:name, :phone, :email, :address_1, :city, :province, :zipcode, :description]

  validates :name, :presence => true, :uniqueness => true
  
  has_friendly_id :name, :use_slug => true
  
  belongs_to :image
  
end
