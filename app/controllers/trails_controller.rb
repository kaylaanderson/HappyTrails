class TrailsController < ApplicationController

  def index
    @trails = Trail.new.trails["trails"]
  end

  def show
    t = Trail.new.trail_id(params[:id])["trails"]
    @trail = (t.nil?) ? t : t[0]
  end

end
