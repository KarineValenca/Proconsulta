require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
include SessionsHelper

describe SessionsController, :type => :controller do 
	before do
		@user = FactoryGirl.create(:user)
	end
	let(:valid_session) { {} }
	describe "POST destroy" do
		it "should logout" do
		  sign_in(@user)
		  get :destroy
		  session[:user_id].should be(nil)
		  response.should be_redirect
  		end
	end

	describe "POST create" do
		it "expect user to be finded by email" do
		end

		it "expect user finded to be signed" do
		end

		it "expect signed user to be redirected to his profile" do
		end

		it "expect invalid user to return error message" do
		end

		it "expect invalid user to rerender the session view" do
		end
	end


end