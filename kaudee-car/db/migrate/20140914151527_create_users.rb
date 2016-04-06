class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :sex
      t.string :tel
      t.string :usertype
      t.string :birthdate
      t.string :marketname
      t.string :cellphone
      t.string :marketphone
      t.string :marketemail
      t.string :address
      t.string :access_token

      t.timestamps
    end
  end
end
