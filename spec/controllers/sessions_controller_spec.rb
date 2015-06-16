require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do

	it "Should render the new template" do 
		# post :create, user: FactoryGirl.attributes_for(:valid_user)
	get :new 
    expect(response).to render_template(:new)
	end

	it "Should assign new user for the login form" do

	get :new

    expect(assigns(:user)).to be_a_new(User)

	end

	it "Should login user with correct user name and password" do 

		FactoryGirl.create(:valid_user)

	post :create, user: FactoryGirl.attributes_for(:valid_user)

	expect(assigns(:create)).to redirect_to(users_path)

	end

	it "Should not login user with incorrect user name and password" do 

		FactoryGirl.create(:valid_user)
	post :create, user: FactoryGirl.attributes_for(:valid_user, email: "")

	expect(assigns(:create)).to redirect_to(new_session_path)

	end	

	it "Should destroy the session when logging a user out " do 

	delete :destroy

	expect(session[:user_id]).to be nil
	end

	it "Should redirect to users page when logging a user out " do 

		delete :destroy

	expect(assigns(:destroy)).to redirect_to(users_path)
	end



end


# * New - Should render the new template
# * New - Should assign new user for the login form
# * Create - Should login user with correct user name and password
# * Create - Should not login user with incorrect user name and password
# * Destroy - Should destroy the session when logging a user out 
# * Destroy - Should redirect to users page when logging a user out 