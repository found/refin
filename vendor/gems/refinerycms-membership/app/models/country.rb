class Country < ActiveRecord::Base
  has_many :addresses
  
  attr_accessible :country_code, :country_name, :position
  
  default_scope :order => "position DESC, country_name ASC"
end