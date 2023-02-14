class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update]

    def index
        render json: User.all, status: :ok
    end

    def show
        render json: @user, status: :ok
    end

    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def update
        @user.update!(user_params)
        render json: @user, status: :accepted
    end

    private
    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.permit(:first_name, :last_name, :account_type, :DOB, :username)
    end
end
end
