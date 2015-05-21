class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :First_name
      t.string :mi
      t.string :Last_name
      t.string :User_name
      t.string :Password
      t.integer :Login_type

      t.timestamps null: false
    end
  end
end
