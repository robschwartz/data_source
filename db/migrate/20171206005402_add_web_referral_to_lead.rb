class AddWebReferralToLead < ActiveRecord::Migration[5.0]
  def change
    add_column :leads, :web_referral, :string
  end
end
