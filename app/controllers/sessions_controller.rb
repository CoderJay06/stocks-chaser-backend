class SessionsController < ApplicationController
   before_action :find_user, :authenticate_user, only: [:create]
   # user login

   def create 
      session[:user_id] = @user.id 
      # byebug
      render json: @user, status: :accepted 
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
