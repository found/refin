class CatProgJunc < ActiveRecord::Base
  belongs_to :category
  belongs_to :program
end