class MedicareCompany < ApplicationRecord
  has_many :medicare_contacts
  has_and_belongs_to_many :medicare_leads, dependant: false

end
