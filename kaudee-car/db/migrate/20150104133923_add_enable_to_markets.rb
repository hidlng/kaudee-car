class AddEnableToMarkets < ActiveRecord::Migration
  def change
    add_column :markets, :enable, :string
  end
end
