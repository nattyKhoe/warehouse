class ItemsController < ApplicationController
    before_action :set_item, only: [:show, :update]

    def show
        render json: @item, status: :ok
    end

    def create
        item = Item.create!(item_params)
        render json: item, status: :created
    end

    def update
        @item.update!(item_params)
        render json: @item, status: :accepted
    end

    private
    def set_item
        @item = Item.find(params[:id])
    end

    def item_params
        params.permit(:barcode, :category, :manufacturer_id, :buy_price, :sell_price, :item_name, :item_stock)
    end


end
