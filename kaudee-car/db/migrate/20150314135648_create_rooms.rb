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

      t.integer :deposit
      t.string :deposit_unit
      t.integer :rent
      t.string :rent_unit
      t.string :rstruct
      t.integer :rcount
      t.integer :bcount
      t.string :bform
      t.integer :bfloor
      t.string :parea
      t.string :aarea
      t.string :options
      t.integer :mexpenses
      t.integer :livedays
      t.string :parkingyn
      t.string :elevatoryn
      t.string :poolyn

      t.string :city
      t.string :district
      t.timestamps
    end
  end
end
