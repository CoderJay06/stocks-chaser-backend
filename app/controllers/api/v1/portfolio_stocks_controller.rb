class Api::V1::PortfolioStocksController < ApplicationController
   def create 
      # need to add new stock to users portfolio
      # byebug
      # TODO: need to add/save new stocks for users portfolio
      stock = Stock.create(
         ticker: params[:portfolio_stock][:stock]["ticker"],
         name: params[:portfolio_stock][:stock]["name"],
         price_per_share: params[:portfolio_stock][:stock]["price_per_share"]
      )

      portfolio_stock = PortfolioStock.create({
         portfolio_id: params[:portfolio_stock][:portfolio][:id],
         stock_id: stock.id
      });
      # byebug
      render json: portfolio_stock, include: [:stock], status: :accepted
   end 

   def update 
   end 

   def destroy
   end 

   # private 
   # def portfolio_stocks_params 
   #    params.require(:portfolio_stocks).permit(:portfolio_id, :stock_id)
   # end 
end
