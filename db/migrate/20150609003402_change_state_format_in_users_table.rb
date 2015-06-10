# Author: Maxwell Barvian
class ChangeStateFormatInUsersTable < ActiveRecord::Migration
  def change
    change_column :users, :state, :integer
  end
end
