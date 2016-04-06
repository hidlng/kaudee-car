class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :categorylao
      t.string :categoryname

      t.timestamps
    end
  end
end
