class Party < ActiveRecord::Base

  has_many :foods, :through => :orders
  has_many :orders

  def to_s
    'table is ready'
  end

  # def receipt
  #
  #   total_price = {}
  #
  #   x = self.attributes
  #   x.each { |key, value| puts "#{key} equals #{value}" }
  #
  #
  #   self do |cents, value|
  #     cents = self.attributes.foods.map{ |i| i.cents }
  #     sum = cents.inject(:+)
  #     dollars = sum / 100
  #     total_price[key] = dollars
  #
  #   end
  # 
  # end

end
