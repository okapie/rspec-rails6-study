=begin
  Some document.
=end

# = Some explanation for Item Class.
class Item < ApplicationRecord
  # == Some explanation for accessor.
  attr_accessor :name

  # == Some explanation for initialize method.
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
