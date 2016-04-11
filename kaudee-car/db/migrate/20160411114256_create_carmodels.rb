class CreateCarmodels < ActiveRecord::Migration
  def change
    create_table :carmodels do |t|
      t.string :modelname
      t.integer :brand_id
      t.timestamps null: false
    end
  end
end
