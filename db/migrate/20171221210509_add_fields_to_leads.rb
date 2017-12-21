class AddFieldsToLeads < ActiveRecord::Migration[5.0]
  def change
    add_column :leads, :location, :string
    add_column :leads, :home_type, :string
    add_column :leads, :home_id, :string
  end
end
