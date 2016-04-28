class CreateCarbrands < ActiveRecord::Migration
  def change
    create_table :carbrands do |t|
      t.string :brandname
      t.integer :brand_option
      t.timestamps null: false
    end
  end
end
