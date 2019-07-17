class Trail < ApplicationRecord
  geocoded_by :location
  after_validation :geocode

  include HTTParty
  base_uri 'hikingproject.com/data'
  def get_data
    self.class.get("/get-trails?lat=40.027&maxResults=1&maxDistance=200&lon=-105.2519&key=#{ENV['TRAILS_API_KEY']}")
  end
  def trails
    get_data.parsed_response
  end
end
