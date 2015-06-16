require 'rails_helper'

RSpec.describe TargetsController, :type => :controller do

	it "Should render index page when user is logged in or 'authorized'" do 
      allow(controller).to receive(:authorize).and_return(FactoryGirl.build(:valid_user))
	  get :index 
     

      expect(response).to render_template(:index)  
	end 

	it "Should redirect to Session new page when user is not logged in" do 

	get :index 

	expect(response).to redirect_to(create_session_path)
	end


end


# * Index - Should render index page when user is logged in or 'authorized'
# * Index - Should redirect to Session new page when user is not logged in
