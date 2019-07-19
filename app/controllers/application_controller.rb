class ApplicationController < ActionController::Base

  # def call_web_api(url)
  #   require 'net/https'
  #   http = Net::HTTP.new('www.hikingproject.com', 443)
  #   http.use_ssl = true 
  #   request = Net::HTTP::Get.new(URI("https://www.hikingproject.com/data/#{url}&key=#{ENV['TRAILS_API_KEY']}"))
  #   response = http.request(request)
  #   if response.code == "301"
  #     response = Net::HTTP.get_response(URI.parse(response.header['location']))
  #   end
  #   return response.body
  # end

end
