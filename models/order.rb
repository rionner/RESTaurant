class Order < ActiveRecord::Base

  belongs_to :party
  belongs_to :food

  def to_s
    'order is up'
  end

end
