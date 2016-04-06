class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :marketname
      t.string :marketname_lao
      t.integer :user_id
      t.string :category1
      t.string :category2
      t.string :city
      t.string :district
      t.string :address
      t.string :address_lao
      t.string :open1
      t.string :close1
      t.string :desc1
      t.string :open2
      t.string :close2
      t.string :desc2
      t.string :open3
      t.string :close3
      t.string :desc3
      t.string :fax
      t.string :cellphone
      t.string :tel
      t.string :email
      t.string :homepage
      t.string :latitude
      t.string :longitude
      t.string :delyn
      t.string :detail_lao
      t.string :detail_eng
      t.string :keyword
      t.string :keyword_lao

      t.timestamps
    end
  end
end
