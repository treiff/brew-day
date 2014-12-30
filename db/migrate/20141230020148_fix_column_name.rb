class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :brew_sessions, :users_id, :user_id
  end
end
