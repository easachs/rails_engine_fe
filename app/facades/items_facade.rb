class ItemsFacade
  def self.index
    ItemsService.index[:data].map do |item_data|
      Item.new(item_data)
    end
  end

  def self.show(id)
    item_data = ItemsService.show(id)[:data]
    Item.new(item_data)
  end
end