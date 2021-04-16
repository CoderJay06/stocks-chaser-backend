class Api::V1::UsersController < ApplicationController
   before_action :find_user, only: [:show, :update, :destroy]

   def index
      users = User.all 

      render json: users 
   end 

   def create
      # create new user account 
      user = User.create(user_params)

      if user.save 
         render json: user
      else  
         render json: { error: 'Error signing up' }
      end 
   end 

   def show
      # show user profile
      render json: @user
   end 

   def update
      # update user account
      @user.update(user_params)

      if @user.save 
         render json: @user 
      else  
         render json: { error: 'Error updating user account' }
      end 
   end 

   def destroy 
      # delete user account
      @user.destroy
   end 

   private 

   def user_params 
      params.require(:user).permit(:email, :username, :password)
   end 

   def find_user 
      @user = User.find(params[:id])
   end 
end
