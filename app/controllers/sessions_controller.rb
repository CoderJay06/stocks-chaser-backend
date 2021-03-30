class SessionsController < ApplicationController
   before_action :find_user 
   # user login
   def create 
      if @user && @user.authenticate(session_params[:password])
         session[:user_id] = @user.id 

         render json: @user, status: :accepted 
      else  
         render json: { error: "Invalid credentials" }, status: :unauthorized
      end 
   end 

   # user logout
   def destroy 
   end 

   private 

   def session_params 
      params.require(:user).permit(:username, :password)
   end 

   def find_user 
      @user = User.find(username: session_params[:username])
   end 
end
