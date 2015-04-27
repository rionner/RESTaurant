class Party < ActiveRecord::Base

  has_many :foods, :through => :orders
  has_many :orders

  def initialize(table_num)
    @table_num = table_num
  end

  def to_s
    'table is ready'
  end

end
