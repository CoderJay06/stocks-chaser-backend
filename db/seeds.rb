# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Portfolio.destroy_all
Stock.destroy_all

stock1 = Stock.create(ticker: 'TSLA', name: 'Tesla', price_per_share: 700.00)
stock2 = Stock.create(ticker: 'AMZN', name: 'Amazon', price_per_share: 3000.15)
stock3 = Stock.create(ticker: 'TGT', name: 'Target', price_per_share: 200.00)
stock4 = Stock.create(ticker: 'WLMT', name: 'Walmart', price_per_share: 133.00)
stock5 = Stock.create(ticker: 'DSNY', name: 'Disney', price_per_share: 355.00)
stock6 = Stock.create(ticker: 'FB', name: 'Facebook', price_per_share: 285.00)
stock7 = Stock.create(ticker: 'APPL', name: 'Apple', price_per_share: 120.00)
stock8 = Stock.create(ticker: 'MCD', name: 'Mcdonalds', price_per_share: 226.00)
stocks = [stock1, stock2, stock3, stock4, stock5, stock6, stock7, stock8]

user1 = User.create(email: 'investorbob@investor.com', username: 'bob_the_investor', password: 'bob123')
portfolio1 = Portfolio.create(stock_quantity: 6, user_id: user1.id)
portfolio1.stocks = stocks.each { |stock| stock }.slice(0, portfolio1.stock_quantity)

user2 = User.create(email: 'joe@stocks.com', username: 'joey_stocks', password: 'joe123')
portfolio2 = Portfolio.create(stock_quantity: 5, user_id: user2.id)
portfolio2.stocks = stocks.each { |stock| stock }.slice(0, portfolio2.stock_quantity)

user3 = User.create(email: 'paul@paul.com', username: 'portfolio_paul', password: 'paul123')
portfolio3 = Portfolio.create(stock_quantity: 3, user_id: user3.id)
portfolio3.stocks = stocks.each { |stock| stock }.slice(0, portfolio3.stock_quantity)

user4 = User.create(email: 'sally@stocks.com', username: 'sally_stocks', password: 'sally123')
portfolio4 = Portfolio.create(stock_quantity: 7, user_id: user4.id)
portfolio4.stocks = stocks.each { |stock| stock }.slice(0, portfolio4.stock_quantity)
