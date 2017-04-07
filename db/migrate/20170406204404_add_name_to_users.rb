class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firstName, :string
    add_column :users, :lastName, :string
    add_column :users, :gender, :string
    add_column :users, :denomination, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :interests, :string
  end
end
