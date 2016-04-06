class AddRecomnoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :recomno, :string
  end
end
