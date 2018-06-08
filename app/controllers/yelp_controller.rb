class YelpController < ApplicationController

  def fetch
    rest_name = params[:_json]
    response = RestClient::Request.execute(
      method: :get,
      url: "https://api.yelp.com/v3/businesses/search?term=#{rest_name}&location=california",
      headers: {Authorization: "Bearer ViVJ_xzCHZLXVMWWdKBqnWl3nI1xyIjm3RPfVWPjGfLzf5afX_7tGA1SDAHyvvCmK36umL6aPVc60f0JR-8hCSFWFylxkJ5-Hgnj3qBEkL0H0mxiVqj09jNEEnoZW3Yx"}
    )
    results = JSON.parse(response)
    render json: results
  end

end
