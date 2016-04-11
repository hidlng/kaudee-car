class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :carsname
      t.string :carsname_lao
      t.string :city
      t.string :distinct
      t.integer :user_id
      
      t.string :address
      t.string :address_lao
      t.string :cellphone
      
      t.string :latitude
      t.string :longitude
      t.string :delyn
      t.string :detail_lao
      t.string :detail_eng

      t.string :brand
      t.string :model
      t.string :newold
      t.integer :price
      t.string :price_unit
      t.string :year
      t.string :odometer
      t.string :transmission
      t.string :fueltype
      t.string :drivetype
      t.string :color
      t.string :bodytype

      t.timestamps null: false
    end
  end
end
