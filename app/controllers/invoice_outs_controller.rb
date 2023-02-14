class InvoiceOutsController < ApplicationController
    before_action :set_invoice_out, only: [:show, :update, :destroy]

    def index
        render json: InvoiceOut.all, status: :ok
    end

    def show
        render json: @invoice_out, status: :ok
    end

    def create
        invoice_out = InvoiceOut.create!(invoice_out_params)
        render json: invoice_out, status: :created
    end

    def update
        @invoice_out.update!(invoice_out_params)
        render json: invoice_out, status: :accepted
    end

    def destroy
        @invoice_out.destroy
        head :no_content
    end

    private
    def invoice_out_params
        params.permit(:invoice_no, :date, :store_id, :due_date, :tax, :total,
        :grand_total, :paid_status)
    end

    def set_invoice_out
        @invoice_out = InvoiceOut.find(params[:id])
    end
end
