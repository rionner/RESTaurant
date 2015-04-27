class Order < ActiveRecord::Base

  belongs_to :parties
  belongs_to :orders

  def initialize(is_paid)
    @is_paid = false
  end

  def to_s
    'order is up'
  end

end
