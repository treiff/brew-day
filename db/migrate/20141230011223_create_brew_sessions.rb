class CreateBrewSessions < ActiveRecord::Migration
  def change
    create_table :brew_sessions do |t|
      t.belongs_to :users, index: true

      t.string :style
      t.datetime :brewing_date
      t.string :public_private
    end
  end
end
