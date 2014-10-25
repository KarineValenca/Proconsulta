require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

describe UnityProconsController, :type => :controller do 
  	before do
    	@unity_procon = FactoryGirl.create(:unity_procon)
  	end

    describe "GET show" do
        it "should find the account by its id" do
          get :show, :id => @unity_procon.id
          assigns[:unity_procon].address_unity_procon.should == "Shopping Venancio"
        end
    end

    describe "GET index" do
        it "expect index to be valid" do
          get :index, {}
          expect(response).to have_http_status(:success)
        end
    end

    describe "GET ranking" do
        it "expect ranking to be valid" do
          get :ranking, {}
          expect(response).to have_http_status(:success)
      end
    end
    
end