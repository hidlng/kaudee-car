class AddImageToMarket < ActiveRecord::Migration
  def change
    add_column :markets, :image, :string
  end
end
