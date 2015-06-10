class AddUserPhoneTypeToUserPhones < ActiveRecord::Migration
  def change
    add_column :user_phones, :user_phone_type, :integer
  end
end
