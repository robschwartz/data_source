class LeadController < ApplicationController
  skip_before_action :verify_authenticity_token

  # main endpoint to accept NURSING HOME data from Lead Gen websites
  def accept
    lead = params['lead']
    # main endpoint to accept data from Lead Gen websites
    p params
    lead = Lead.find_or_create_by(number: lead_params["number"])
    lead.update_attributes(lead_params)
    # params: full name, number, email, location, web_referral, home_type, home_id
    render json: {"status":"accepted"}
  end

  # main endpoint to accept LOAN data from Lead Gen websites
  def accept_loan_lead
    lead = params['loan_lead']
    p params
    lead = LoanLead.find_or_create_by(number: loan_lead_params["number"])
    lead.update_attributes(loan_lead_params)
    render json: {"status":"accepted"}
  end

  def accept_medicare_lead
    lead = params['medicare_lead']
    p params
    lead = MedicareLead.find_or_create_by(phone: medicare_lead_params["phone"])
    lead.update_attributes(medicare_lead_params)
    render json: {"status":"accepted"}
  end

  private

  def medicare_lead_params
    params.require(:medicare_lead).permit(:name, :phone, :zip, :supplement_plans, :advantage_plan_part_c, :perscription_drug_plan_part_d, :agreement_checked)
  end

  def loan_lead_params
    params.require(:loan_lead).permit(:name, :number, :email, :annual_sales, :years_in_business, :loan_date, :company_name, :loan_amount, :loan_type)
  end

  def lead_params
    params.require(:lead).permit(:name, :number, :email, :location, :web_referral, :home_type, :home_id, :provider_id, :form_version)
  end
end
