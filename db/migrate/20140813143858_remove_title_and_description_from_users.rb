class RemoveTitleAndDescriptionFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :title, :string
    remove_column :users, :description, :string
  end
end