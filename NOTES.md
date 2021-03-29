# Models:
   
## User
   - has_one Portfolio
      :email - string, :username - string, :password - string (:password_digest)

## Portfolio
   - belongs_to User
   - has_and_belongs_to_many Stocks
      :stock_quantity - integer
                                      - portfolios_stocks (- belongs_to Portfolio, -belongs_to Stock)
## Stock 
   - has_and_belongs_to_many Portfolios
      :ticker - string, :name - string
