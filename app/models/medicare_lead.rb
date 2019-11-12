class MedicareLead < ApplicationRecord
  has_and_belongs_to_many :medicare_companies

  after_create :process_lead

  # send the lead to 5 companies that have leads remaining
  # deduct 1 from the company's lead_remaining count
  def process_lead
    companies = MedicareCompany.where("leads_remaining > ?", 0)
    companies.each do |comp|
      self.medicare_companies << comp
      # LeadMailer.send_lead(self, comp).deliver_now
      
      self.save
    end
  end
end
