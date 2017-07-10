class DistancesController < ApplicationController
  def index
    if params[:zip_code1] && params[:zip_code2]
      url = "https://www.zipcodeapi.com/rest/#{ENV['API_KEY']}/distance.json/#{params[:zip_code1]}/#{params[:zip_code2]}/km"
      response = get_distance_from_api(url)
      begin
        @calculated_distance = extract_distance(response)
      rescue StandardError
      end
    end
  end

  private

  def get_distance_from_api(url)
    uri = URI(url)
    Net::HTTP.get_response(uri)
  end

  def extract_distance(response)
    JSON.parse(response.body)
  end
end
