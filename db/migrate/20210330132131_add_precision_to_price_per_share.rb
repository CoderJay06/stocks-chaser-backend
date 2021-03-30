class AddPrecisionToPricePerShare < ActiveRecord::Migration[6.0]
  def change
    change_column :stocks, :price_per_share, :decimal, precision: 9, scale: 2
  end
end
