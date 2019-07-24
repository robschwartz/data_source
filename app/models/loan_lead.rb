class LoanLead < ApplicationRecord
  has_and_belongs_to_many :loan_companies

  after_create :process_lead

  # send the lead to 5 companies that have leads remaining
  # deduct 1 from the company's lead_remaining count
  def process_lead
    companies = LoanCompany.where("leads_remaining > ?", 0)
    companies.each do |comp|
      self.loan_companies << comp
      # LeadMailer.send(self, comp).deliver_now
      
      self.save
    end
  end
end
