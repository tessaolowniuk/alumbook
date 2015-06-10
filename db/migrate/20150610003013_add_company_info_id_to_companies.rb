class AddCompanyInfoIdToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :company_info_id, :string
  end
end
