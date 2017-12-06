class Company < ApplicationRecord
  has_many :leads
  has_many :contacts
end
