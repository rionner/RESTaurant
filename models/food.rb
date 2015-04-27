class Food < ActiveRecord::Base

  def initialize(name, description, price, vegan)
    @name = name
    @description = description
    @price = price
    @vegan = true
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end

  def description
    @description
  end

  def description=(new_description)
    @description = new_description
  end

  def price
    @price
  end

  def price=(new_price)
    @price = new_price
  end

  def vegan
    @vegan
  end

  def to_s
    'Food is good'
  end

end
