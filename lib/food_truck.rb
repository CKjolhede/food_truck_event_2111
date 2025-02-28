require 'pry'
require './lib/item'

class FoodTruck
  attr_reader :name, :inventory, :potential_revenue

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, quantity)
    @inventory[item] += quantity
  end

  # def potential_reveune
  #   rev_by_time = @inventory.map do |item, quantity|
  #     item.price * quantity
  #   end
  #   rev_by_item.reduce
  #
  # end
  def potential_revenue
    @inventory.sum do |item, quantity|
      item.price * quantity
    end
  end



end
