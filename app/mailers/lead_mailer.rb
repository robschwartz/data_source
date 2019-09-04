class LeadMailer < ApplicationMailer
  default :from => 'noreply@ozer-finance.com'

  def send_lead(params, company)
    puts params

    @name = params["name"]
    # mail( :to => company.contacts.first.email,
    # :subject => "New Lead by Ozer")
  rescue => e  
    
  end
end
