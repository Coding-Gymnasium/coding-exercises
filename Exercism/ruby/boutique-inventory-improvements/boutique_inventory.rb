# frozen_string_literal: true

require 'ostruct'

# BoutiqueInventory Class
class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map { |item| OpenStruct.new(item) }
  end

  def item_names
    @items.map(&:name).sort
  end

  def total_stock
    @items.map(&:quantity_by_size).map(&:values).sum(&:sum)
  end
end
