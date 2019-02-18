class AddProviderToLeads < ActiveRecord::Migration[5.0]
  def change
    add_reference :leads, :provider, foreign_key: true
  end
end
