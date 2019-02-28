class CreateLeadsCompaniesJoinTable < ActiveRecord::Migration[5.0]
  def change
    # This is enough; you don't need to worry about order
    # create_join_table :leads, :companies
  
    # If you want to add an index for faster querying through this join:
    create_join_table :leads, :companies do |t|
      t.index :lead_id
      t.index :company_id
    end
  end
end
