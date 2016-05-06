class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer	:data_id
      t.string	:img
      t.integer :gubun
      t.timestamps
    end
  end
end
