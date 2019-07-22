# t.string   "name"
# t.string   "number"
# t.string   "email"
# t.datetime "created_at",   null: false
# t.datetime "updated_at",   null: false
# t.string   "web_referral"
# t.string   "location"
# t.string   "home_type"
# t.string   "home_id"
# t.integer  "provider_id"

class Lead < ApplicationRecord
  # belongs_to :provider, required: false
  has_and_belongs_to_many :company, required: false
end
