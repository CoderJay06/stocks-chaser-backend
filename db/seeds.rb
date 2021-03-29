# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Portfolio.destroy_all

user1 = User.create(email: 'investorbob@investor.com', username: 'bob_the_investor', password: 'bob123')
portfolio1 = Portfolio.create(stock_quantity: 10, user_id: user1.id)

user2 = User.create(email: 'joe@stocks.com', username: 'joey_stocks', password: 'joe123')
portfolio2 = Portfolio.create(stock_quantity: 8, user_id: user2.id)

user3 = User.create(email: 'paul@paul.com', username: 'portfolio_paul', password: 'paul123')
portfolio3 = Portfolio.create(stock_quantity: 4, user_id: user3.id)

user4 = User.create(email: 'sally@stocks.com', username: 'sally_stocks', password: 'sally123')
portfolio4 = Portfolio.create(stock_quantity: 12, user_id: user4.id)
