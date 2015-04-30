class Food < ActiveRecord::Base

  has_many :parties, :through => :orders
  has_many :orders

  def to_s
    'food is good'
  end

  def dollars
    self.cents/100.0
  end

end
