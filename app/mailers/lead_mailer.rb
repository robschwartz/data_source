class LeadMailer < ApplicationMailer
  default :from => 'noreply@leadhero.com'

  def send_lead(lead, company)
    puts lead.inspect
    @lead_name = lead.name
    @lead_phone = lead.phone
    @lead_zip = lead.zip
    @lead_supplement_plans = lead.supplement_plans
    @lead_advantage_plan_part_c = lead.advantage_plan_part_c
    @lead_perscription_drug_plan_part_d = lead.perscription_drug_plan_part_d
    @contact_name = company&.medicare_contacts&.first&.name

    mail( :to => company.medicare_contacts.first.email,
          :bcc => 'rob.ozerfinance@gmail.com, aceeightofspades@gmail.com'
          :subject => "New Lead by LeadHero"
        )
  rescue => e  
    puts e
  end
end
