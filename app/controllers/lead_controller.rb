class LeadController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def accept
    lead = params['lead']
    # main endpoint to accept data from Lead Gen websites
    p params
    Lead.create(lead)
    # params: full name, number, email, location, web_referral, home_type, home_id
    render json: {"status":"accepted"}
  end
end
