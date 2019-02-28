class LeadController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def accept
    lead = params['lead']
    # main endpoint to accept data from Lead Gen websites
    p params
    lead = Lead.find_or_create_by(number: lead_params["number"])
    lead.update_attributes(lead_params)
    # params: full name, number, email, location, web_referral, home_type, home_id
    render json: {"status":"accepted"}
  end

  private

  def lead_params
    params.require(:lead).permit(:name, :number, :email, :location, :web_referral, :home_type, :home_id, :provider_id)
  end
end
