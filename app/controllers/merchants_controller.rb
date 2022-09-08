class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.index
  end

  def show
    @merchant = MerchantsFacade.show(params[:id])
    @items = MerchantsFacade.items(params[:id])
  end
end