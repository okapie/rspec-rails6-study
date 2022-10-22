class Item < ApplicationRecord
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
