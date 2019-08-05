require 'rails_helper'

RSpec.describe TrailsController, type: :controller do 
  describe "trails#index action" do 
    it "should display the expected data" do 
      get :index 
      expect(response).to have_http_status(:success)
    end
  end

  describe "trails#show action" do 
    it "should successfully show the trails details page" do 
      get :show
      expect(response).to have_http_status(:success)
    end
  end
end
