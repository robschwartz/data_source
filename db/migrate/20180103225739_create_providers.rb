class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :county
      t.integer :bed_count
      t.integer :occupied_beds
      t.boolean :medicare
      t.boolean :medicaid
      t.string :provider_number
      t.integer :overall_rating
      t.string :holding_company

      t.timestamps
    end
  end
end
