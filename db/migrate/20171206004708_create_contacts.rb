class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.string :address_2
      t.string :phone
      t.string :email
      t.string :zip
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
