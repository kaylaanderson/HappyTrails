class TrailsController < ApplicationController

  def index
    # request = 'get-trails?lat=40.027&maxResults=1&maxDistance=200&lon=-105.2519'
    # @content = call_web_api(request)
    @trails = Trail.new.trails["trails"]
  end

  def show
    @trail = Trail.new.trail_id["trail_id"].find(params[:id])
  end
  

  private

  def trail_params
    params.require(:trail).permit(:name, :location, :summary)
  end

end
