class InvoiceInsController < ApplicationController
    before_action :set_invoice_in, only: [:update, :destroy, :show]
    
    def index
        render json: InvoiceIn.all, status: :ok
    end

    def show
        render json: @invoice_in, status: :ok
    end

    def create
    invoice_in = InvoiceIn.create!(invoice_in_params)
    render json: invoice_in, status: :created
    end

    def destroy
        @invoice_in.destroy
        head :no_content
    end

    def update
        @invoice_in.update!(invoice_in_params)
        render @invoice_in, status: :accepted
    end

    private
    def invoice_in_params
        params.permit(:invoice_no, :date, :manufacturer_id, :due_date, :tax, :total,
        :grand_total, :paid_status)
    end

    def set_invoice_in
        @invoice_in = InvoiceIn.find(params[:id])
    end

end
