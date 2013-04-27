class ItemsController < ApplicationController
  def index
    @red_items = Item.red
    @yellow_items = Item.yellow
    @green_items = Item.green
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create!(params[:item])
    respond_to do |format|
      format.html { redirect_to items_path }
      format.js
    end
  end
  
  def update
    @item = Item.find(params[:id])
    @item.update_status!
    respond_to do |format|
      format.html { redirect_to items_path }
      format.js
    end
  end

  def destroy
    @item = Item.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to items_path }
      format.js
    end
  end
end
