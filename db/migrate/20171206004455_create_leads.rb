class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :number
      t.string :email
      t.string :moving_from
      t.string :moving_to
      t.string :move_date
      t.string :move_size

      t.timestamps
    end
  end
end
