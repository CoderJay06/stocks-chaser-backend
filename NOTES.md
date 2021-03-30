# Models:
   
## User
   - has_one Portfolio
      :email - string, :username - string, :password - string (:password_digest)

## Portfolio
   - belongs_to User
   - has_many PortfolioStocks
   - has_many Stocks through PortfolioStocks
      :stock_quantity - integer
                                   
## Stock 
   - has_many PortfoliosStocks
   - has_many Portfolios through PortfolioStocks
      :ticker - string, :name - string, :price_per_share - decimal

## PortfolioStock (jointable)
   - belongs_to Portfolio
   - belongs_to Stock