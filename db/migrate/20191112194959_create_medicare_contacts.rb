class CreateMedicareContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :medicare_contacts do |t|
      t.string :name
      t.string :email
      t.string :number

      t.timestamps
    end
  end
end
