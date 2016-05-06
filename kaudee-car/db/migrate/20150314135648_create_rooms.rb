class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :roomname
      t.string :roomname_lao
      t.integer :user_id
      t.string :address
      t.string :address_lao
      t.string :cellphone
      t.string :tel
      t.string :email
      t.string :latitude
      t.string :longitude
      t.string :delyn
      t.string :detail_lao
      t.string :detail_eng

      t.string :status
      t.string :product
      t.integer :price
      t.string :price_unit
      t.string :land_size
      t.string :rooms
      t.string :toilets
      t.string :built_year
      t.string :amenities
      t.string :parking
      t.string :rent_option

      t.string :city
      t.string :district
      t.timestamps
    end
  end
end
