class Api::V1::StocksController < ApplicationController
   before_action :find_stock, only: [:show, :update, :destory]

   def index 
      # byebug
      stocks = Stock.all 

      render json: stocks 
   end 

   def create 
      stock = Stock.create(stock_params)

      if stock.save 
         render json: stock
      else  
         render json: { error: 'Error adding this stock' }
      end 
   end 

   def show 
      render json: @stock 
   end 

   def update 
      @stock.update(stock_params)

      if @stock.save  
         render json: @stock
      else  
         render json: { error: 'Error updating this stock' }
      end 
   end 

   def destroy 
      @stock.destroy 
   end 

   private 

   def stock_params 
      params.require(:stock).permit(:ticker, :name, :price_per_share)
   end 

   def find_stock
      @stock = Stock.find(params[:id]) 
   end 

end
