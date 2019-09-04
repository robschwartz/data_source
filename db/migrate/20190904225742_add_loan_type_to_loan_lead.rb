class AddLoanTypeToLoanLead < ActiveRecord::Migration[5.0]
  def change
    add_column :loan_leads, :loan_type, :string
  end
end
