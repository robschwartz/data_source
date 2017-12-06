class AddLeadToCompany < ActiveRecord::Migration[5.0]
  def change
    add_reference :companies, :lead, foreign_key: true
  end
end
