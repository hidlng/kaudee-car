class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer	:room_id
      t.string	:img
      t.timestamps
    end
  end
end
