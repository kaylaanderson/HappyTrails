class Trail < ApplicationRecord
  geocoded_by :location
  after_validation :geocode

include HTTParty

  base_uri 'hikingproject.com/data'

  def get_data
    self.class.get("/get-trails?lat=35.4824&maxResults=10&maxDistance=200&lon=-86.1051&key=#{ENV['TRAILS_API_KEY']}")
  end

  def trails
    get_data.parsed_response
  end

  def get_trails_by_id(id)
    self.class.get("/get-trails-by-id?ids=7001635&key=#{ENV['TRAILS_API_KEY']}&ids=#{id}")
  end

  def trail_id(trail_id)
    get_trails_by_id(trail_id).parsed_response
  end


end
