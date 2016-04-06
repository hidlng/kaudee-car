class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :districtname
      t.string :district_lao
      t.integer :city_id

      t.timestamps
    end
  end
end
