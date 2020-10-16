class ParksController < ApplicationController
  def index
    search_params = params[:state]
    response = Faraday.get("https://developer.nps.gov/api/v1/parks?stateCode='#{search_params}'&api_key=#{ENV['PARKS_API']}")
    json = JSON.parse(response.body, symbolize_names: true)
    @parks = json[:data]
  end
end