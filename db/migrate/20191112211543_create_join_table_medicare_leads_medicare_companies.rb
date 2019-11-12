class CreateJoinTableMedicareLeadsMedicareCompanies < ActiveRecord::Migration[5.0]
  def change
    create_join_table :medicare_leads, :medicare_companies do |t|
      # t.index [:medicare_lead_id, :medicare_company_id]
      # t.index [:medicare_company_id, :medicare_lead_id]
    end
  end
end
