# Author: Maxwell Barvian
class ChangeStateFormatInCompanyInfosTable < ActiveRecord::Migration
  def change
    change_column :company_infos, :state, :integer
  end
end
