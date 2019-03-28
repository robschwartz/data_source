class AddFormVersionToLead < ActiveRecord::Migration[5.0]
  def change
    add_column :leads, :form_version, :string
  end
end
