class AddColumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :myList, :string
  	add_column :users, :requestList, :string
  	add_column :users, :bookmarkList, :string
  end
end
