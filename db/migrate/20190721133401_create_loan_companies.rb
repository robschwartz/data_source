class CreateLoanCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_companies do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.integer :price_per_lead
      t.integer :total_leads
      t.integer :leads_remaining

      t.timestamps
    end
  end
end
