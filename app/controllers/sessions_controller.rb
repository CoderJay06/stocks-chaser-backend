class SessionsController < ApplicationController
   before_action :find_user, :authenticate_user, only: [:create]
   # user login

   def create 
      session[:user_id] = @user.id 

      render json: @user, status: :accepted 
      # render json: {
      #    status: :created,
      #    logged_in: true,
      #    user: @user 
      # }
   end 

   # user logout
   def destroy 
   end 

   private 

   def find_user 
      @user = User.find_by(username: params[:username])
   end 

   def authenticate_user
      unless @user && @user.authenticate(params[:password])
         render json: { error: "Invalid credentials" }, status: :unauthorized
      end 
   end 
end
