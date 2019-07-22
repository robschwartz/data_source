class LoanCompany < ApplicationRecord
  has_many :loan_contacts
  has_and_belongs_to_many :loan_leads, dependant: false

end
