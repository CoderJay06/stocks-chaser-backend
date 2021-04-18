class Api::V1::PortfolioStocksController < ApplicationController
   def create 
      # need to add new stock to users portfolio
      # byebug
      # TODO: need to add/save new stocks for users portfolio
      portfolio_stocks = PortfolioStock.create()

      render json: portfolio_stocks, status: :accepted
   end 

   def update 
   end 

   def destroy
   end 

   private 
   # def portfolio_stocks_params 
   #    params.require(:portfolio_stocks).permit(:portfolio_id, :stock_id)
   # end 
end
