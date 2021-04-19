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
      })

      # update portfoliostock and portfolio stock quantity 
      portfolio_stock.portfolio.stock_quantity += 1
      user_portfolio = Portfolio.find(portfolio_stock.portfolio.id)
      user_portfolio.stock_quantity += 1
      # byebug
      if portfolio_stock.save && user_portfolio.save
         render json: portfolio_stock, include: [:portfolio, :stock], status: :accepted
      else 
         render json: { error: 'Error adding this stock to your portfolio' }
      end 
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
