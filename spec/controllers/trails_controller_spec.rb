require 'rails_helper'

RSpec.describe TrailsController, type: :controller do 
  describe "trails_pages#index" do 
    it "should display the expected data" do 
      get :index 
      expect(response).to have_http_status :success
    end
  end
end
