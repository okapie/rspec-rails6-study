class Item < ApplicationRecord
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def introduction
    cocotte_minute = "Cocotte-Minute"
    p "This is the #{cocotte_minute}."
  end
end

item = Item.new
item.introduction # Expect to output `This is the Cocotte-Minute.`
