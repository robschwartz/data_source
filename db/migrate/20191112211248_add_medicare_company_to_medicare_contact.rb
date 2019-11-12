class AddMedicareCompanyToMedicareContact < ActiveRecord::Migration[5.0]
  def change
    add_reference :medicare_contacts, :medicare_company, foreign_key: true
  end
end
