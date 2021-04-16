class Api::V1::PortfoliosController < ApplicationController
   before_action :find_portfolio, only: [:show, :update, :destroy]

   def index 
      # byebug
      portfolios = Portfolio.all 

      render json: portfolios
   end 

   def create 
      portfolio = Portfolio.create(portfolio_params)

      if portfolio.save 
         render json: portfolio
      else  
         render json: { error: 'Error creating portfolio' }
      end 
   end 

   def show 
      render json: @portfolio
   end 

   def update 
      @portfolio.update(portfolio_params)

      if @portfolio.save 
         render json: @portfolio
      else  
         render json: { error: 'Error updating portfolio' }
      end 
   end 

   def destroy 
      @portfolio.destroy
   end 

   private 

   def portfolio_params 
      params.require(:portfolio).permit(:stock_quantity, :user_id)
   end 

   def find_portfolio
      @portfolio = Portfolio.find(params[:id])
   end 
end
