class MerchantsFacade
  def self.index
    MerchantsService.index[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.show(id)
    merchant_data = MerchantsService.show(id)[:data]
    Merchant.new(merchant_data)
  end

  def self.items(id)
    MerchantsService.items(id)[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end