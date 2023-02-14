class UserSessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          render json: { message: "Logged in successfully" }
        else
          render json: { message: "Invalid email or password" }, status: 401
        end
      end
    
      def destroy
        session[:user_id] = nil
        render json: { message: "Logged out successfully" }
      end
end
