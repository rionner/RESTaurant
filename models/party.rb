class Party < ActiveRecord::Base

  has_many :foods, :through => :orders
  has_many :orders

  def to_s
    'table is ready'
  end

end
