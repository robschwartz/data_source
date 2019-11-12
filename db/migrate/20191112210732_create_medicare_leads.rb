class CreateMedicareLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :medicare_leads do |t|
      t.string :name
      t.string :phone
      t.string :zip
      t.boolean :supplement_plans
      t.boolean :advantage_plan_part_c
      t.boolean :perscription_drug_plan_part_d
      t.boolean :agreement_checked

      t.timestamps
    end
  end
end
