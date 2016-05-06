class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :data_id
      t.integer :gubun
      t.timestamps
    end
  end
end
