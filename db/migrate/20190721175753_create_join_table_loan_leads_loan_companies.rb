class CreateJoinTableLoanLeadsLoanCompanies < ActiveRecord::Migration[5.0]
  def change
    create_join_table :loan_leads, :loan_companies do |t|
      t.index [:loan_lead_id, :loan_company_id]
      t.index [:loan_company_id, :loan_lead_id]
    end
  end
end
