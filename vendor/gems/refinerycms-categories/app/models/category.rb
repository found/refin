class Category < ActiveRecord::Base
  has_ancestry
  acts_as_indexed :fields => [:category_name, :category_short_description, :category_description]
  validates :category_name, :presence => true, :uniqueness => true
  
  belongs_to :category_image, :class_name => 'Image'
  has_many :cat_prog_juncs
  has_many :programs, :through => :cat_prog_juncs
  
  default_scope :order => "position ASC"
end
