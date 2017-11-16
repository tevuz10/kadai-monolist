class OwnershipsController < ApplicationController
  def create
    @item = Item.find_or_initialize_by(code: params[:item_code])
    
    unless @item.persisted?
      # @itemが保存されていない場合、先に@itemを保存する
      results = RakutenWebService::Ichiba::Item.search(itemCode: @Item.code)
      
      @item = Item.new(read(results.first))
      @item.save
  end

  def destroy
  end
end
