class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :program
  belongs_to :invoice
  
  validates_numericality_of :quantity, :only_integer => true, :message => "must be an integer"
  validates_numericality_of :price
  
  attr_accessible :quantity, :order_id, :program_id, :price, :recurring
  
  after_save :refresh_order
  
  def refresh_order
    self.order.calculate!
  end
  
  def increment_quantity
    self.quantity += 1
  end
  
  def decrement_quantity
    self.quantity -= 1
  end
  
  def total
    self.price * self.quantity
  end
  
  alias amount total
  
  def adjust_quantity
    self.quantity = 0 if self.quantity.nil? || self.quantity < 0
  end
  
  def item_name
    return self.program.program_name if self.program
    return ""
  end
  
  def item_description
    return self.program.program_short_description if self.program
    return nil
  end
  
  def item_image
    return self.program.program_image if self.program
    return ""
  end
  
  def program?
    return true if self.program
    return false
  end
end
