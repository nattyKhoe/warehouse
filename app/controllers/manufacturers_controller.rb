class ManufacturersController < ApplicationController
    before_action :set_manufacturer, only: [:show, :update]

    def show
        render json: @manufacturer, status: :ok
    end

    def create
        manufacturer = Manufacturer.create!(manufacturer_params)
        render json: manufacturer, status: :created
    end

    def update
        @manufacturer.update!(manufacturer_params)
        render json: @manufacturer, status: :accepted
    end

    private
    def set_manufacturer
        @manufacturer = Manufacturer.find(params[:id])
    end

    def manufacturer_params
        params.permit(:ABN, :manufacturer_code, :address, :city, :manufacturer_name)
    end
end
