class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.integer :stock_quantity
      t.references :user

      t.timestamps
    end
  end
end
