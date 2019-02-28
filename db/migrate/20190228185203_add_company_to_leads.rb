class AddCompanyToLeads < ActiveRecord::Migration[5.0]
  def change
    add_reference :leads, :company, foreign_key: true
  end
end
