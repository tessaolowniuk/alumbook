# Author: Maxwell Barvian, Edited by Tessa Olowniuk
class ChangeStateFormatInCompanyInfosTable < ActiveRecord::Migration
  def change
    change_column :company_infos, :state, :string
  end
end
