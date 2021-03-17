class Api::HolidaysController < ApplicationController
  def index
    response = HTTP.get("https://holidayapi.com/v1/holidays?pretty&key=#{Rails.application.credentials.holidays_api[:api_key]}&country=US&year=2020")
    render json: response.parse
  end
end
