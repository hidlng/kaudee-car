class CreateCarBrands < ActiveRecord::Migration
  def change
    create_table carbrands do |t|
      t.string :brandname

      t.timestamps
    end
  end
end
