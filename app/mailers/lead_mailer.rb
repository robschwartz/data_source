class LeadMailer < ApplicationMailer
  default :from => 'noreply@leadhero.com'

  def send_lead(params, company)
    puts params

    @contact_name = company&.contacts&.first&.name
    mail( :to => company.contacts.first.email,
          :cc => "rob.ozerfinance@gmail.com",
          :subject => "New Lead by LeadHero"
        )
  rescue => e  
    puts e
  end
end
