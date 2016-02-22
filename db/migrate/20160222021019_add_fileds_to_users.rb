class AddFiledsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first, :string
    add_column :users, :last, :string
    add_column :users, :gender, :boolean
    add_column :users, :birth, :date
  end
end
