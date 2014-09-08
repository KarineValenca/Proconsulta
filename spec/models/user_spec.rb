require 'spec_helper'
require 'rails_helper'

describe User do
	before do
		@user = User.new(name_user: "UserTest", email_user: "usertest@test.com", password_user: "teste1234", adress_user: "teste")
	end

	subject { @user }
	it { should respond_to(:name_user) }
	it { should respond_to(:email_user) }
	it { should respond_to(:password_digest )}

	it { should be_valid }

	describe "blank user_name" do
		before { @user.name_user = " " }
		it { should_not be_valid }
	end
	describe "blank email" do
		before { @user.email_user = " "}
		it { should_not be_valid}
	end
	describe "name_user too long " do
		before { @user.name_user = "a"*55 }
		it { should_not be_valid }
	end
	describe "invalid email format" do
		it "should be invalid" do
			addresses = %w[user@foo,com user_at_foo.org example.user@foo.
            foo@bar_baz.com foo@bar+baz.com]
      		addresses.each do |invalid_address|
      			@user.email_user = invalid_address
      			expect(@user).not_to be_valid
      		end
      	end
    end
    describe "email already taken" do
    	before do
    		user_with_same_email = @user.dup
    		user_with_same_email.email_user = @user.email_user.upcase
    		user_with_same_email.save
    	end

    	it { should_not be_valid }
    end
end