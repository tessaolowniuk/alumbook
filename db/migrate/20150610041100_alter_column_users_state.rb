#Created by Tessa
class AlterColumnUsersState < ActiveRecord::Migration
  def change
    change_column :users, :state, :integer
  end
end
