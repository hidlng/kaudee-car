class AddTel2ToMarkets < ActiveRecord::Migration
  def change
    add_column :markets, :tel2, :string
  end
end
