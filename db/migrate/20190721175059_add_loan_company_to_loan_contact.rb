class AddLoanCompanyToLoanContact < ActiveRecord::Migration[5.0]
  def change
    add_reference :loan_contacts, :loan_company, foreign_key: true
  end
end
