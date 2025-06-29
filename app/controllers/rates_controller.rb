require 'csv'
require 'open-uri'

class RatesController < ApplicationController
  before_action :authenticate_user!

  def index
    # Embed the Google Sheet
  end

  def update
    rate_id = params[:id]
    new_rate = params[:rate]
    
    # Send notification to Zapier
    response = HTTParty.post(
      'https://hooks.zapier.com/hooks/catch/6872019/oahrt5g/',
      body: {
        idOp: rate_id,
        tasa: new_rate,
        email: current_user.email
      }.to_json,
      headers: { 'Content-Type': 'application/json' }
    )

    if response.success?
      render json: { success: true }
    else
      render json: { error: 'Failed to notify rate change' }, status: :unprocessable_entity
    end
  end
end
