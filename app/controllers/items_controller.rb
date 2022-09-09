class ItemsController < ApplicationController
  def index
    @items = ItemsFacade.index
  end

  def show
    @item = ItemsFacade.show(params[:id])
  end
end