class RemoveFieldsFromLeads < ActiveRecord::Migration[5.0]
  def change
    remove_column :leads, :moving_to, :string
    remove_column :leads, :moving_from, :string
    remove_column :leads, :move_date, :string
    remove_column :leads, :move_size, :string
  end
end
