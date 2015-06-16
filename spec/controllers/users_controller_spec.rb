require 'rails_helper'

RSpec.describe UserController, :type => :controller do
  #render_views

  it "should return index view for index method" do

    get :index

    expect(response).to render_template(:index)
  end

  it "new creates a new user" do
    get :new

    expect(assigns(:user)).to be_a_new(User)
  end

  it "Allows creation of a valid user, redirects correctly" do 
  	post :create, user: FactoryGirl.attributes_for(:valid_user)

  	expect(response).to redirect_to(users_path)
  end

  it "Doesn't allow invalid user, redirects correctly" do 
  	post :create, user: FactoryGirl.attributes_for(:valid_user, email: "")

  	expect(response).to redirect_to(new_user_path)
  end



 end
