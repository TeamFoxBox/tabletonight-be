
class YelpController < ApplicationController

  API_KEY = "ViVJ_xzCHZLXVMWWdKBqnWl3nI1xyIjm3RPfVWPjGfLzf5afX_7tGA1SDAHyvvCmK36umL6aPVc60f0JR-8hCSFWFylxkJ5-Hgnj3qBEkL0H0mxiVqj09jNEEnoZW3Yx"

  # Constants, do not change these
  API_HOST = "https://api.yelp.com"
  SEARCH_PATH = "/v3/businesses/search"
  BUSINESS_PATH = "/v3/businesses/"
  SEARCH_LIMIT = 10

  def get_next_course

    filter = input_params

    type = params[:filter][:preference]
    location = params[:filter][:location]
    price = params[:filter][:price_range]

   #  actual yelp API call
    response = search

    # puts "Found #{response["total"]} businesses. Listing #{SEARCH_LIMIT}:"
    # response["businesses"].each {|biz| puts biz["name"]}


    render json: response

  end

  def search

    url = "#{API_HOST}#{SEARCH_PATH}"
    yelpParams = {
      perference: params[:filter][:preference],
      location: params[:filter][:location],
      price: params[:filter][:price],
      open_now: true,
      limit: SEARCH_LIMIT
    }

    response = HTTP.auth("Bearer #{API_KEY}").get(url, params: yelpParams)

    response.parse
  end

  private
  def input_params
    params.require(:filter).permit(:perference,:location)
  end

end





#2.0 API
# class YelpController < ApplicationController
#
#   def fetch
#     rest_name = params[:_json]
#     response = RestClient::Request.execute(
#       method: :get,
#       url: "https://api.yelp.com/v3/businesses/search?term=#{rest_name}&location=california",
#       headers: {Authorization: "Bearer ViVJ_xzCHZLXVMWWdKBqnWl3nI1xyIjm3RPfVWPjGfLzf5afX_7tGA1SDAHyvvCmK36umL6aPVc60f0JR-8hCSFWFylxkJ5-Hgnj3qBEkL0H0mxiVqj09jNEEnoZW3Yx"}
#     )
#     results = JSON.parse(response)
#     render json: results
#   end
#
# end
