class Food < ActiveRecord::Base

  has_many :parties, :through => :orders
  has_many :orders

  def initialize(name, description, cents, vegan)
    @name = name
    @description = description
    @cents = cents
    @vegan = true
  end

  # def name
  #   @name
  # end
  #
  # def name=(new_name)
  #   @name = new_name
  # end
  #
  # def description
  #   @description
  # end
  #
  # def description=(new_description)
  #   @description = new_description
  # end
  #
  # def cents
  #   @cents
  # end
  #
  # def cents=(new_cents)
  #   @cents = new_cents
  # end
  #
  # def vegan
  #   @vegan
  # end

  def to_s
    'food is good'
  end

end
