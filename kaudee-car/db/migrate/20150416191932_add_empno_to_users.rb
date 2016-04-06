class AddEmpnoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :empno, :string
  end
end
