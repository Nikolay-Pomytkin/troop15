class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address, :text
    add_column :users, :home_phone, :string
    add_column :users, :parent_cell, :string
    add_column :users, :leadership_position, :string
  end
end
