class TrailsController < ApplicationController

  def index
    request = 'get-trails?lat=40.027&maxResults=1&maxDistance=200&lon=-105.2519'
    @content = call_web_api(request)
  end
  
end
