require 'rails_helper'

RSpec.describe FashionpostController, :type => :controller do

	it "it should return index for post" do 

	get :index

    expect(response).to render_template(:index)
	end

end
