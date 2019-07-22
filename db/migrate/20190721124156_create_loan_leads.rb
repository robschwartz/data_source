class CreateLoanLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_leads do |t|
      t.string :name
      t.string :number
      t.string :email
      t.integer :annual_sales
      t.integer :years_in_business
      t.string :loan_date
      t.string :company_name
      t.string :loan_amount

      t.timestamps
    end
  end
end
