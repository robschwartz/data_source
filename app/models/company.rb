class Company < ApplicationRecord
  has_and_belongs_to_many :leads
  has_many :contacts
end
