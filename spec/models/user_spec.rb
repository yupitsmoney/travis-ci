require 'rails_helper'

RSpec.describe User, :type => :model do



context "email" do
    it "must be present" do
      expect(FactoryGirl.build(:valid_email).save).to be false
    end

    it "must be under 255 characters" do 
    	expect(FactoryGirl.build(:limit_email).save).to be false

    end
    
end

context "password" do

	it "must be x characters" do 
		expect(FactoryGirl.build(:minimum_password).save).to be false 
	end

	it "must match password with confirmation" do 
		expect(FactoryGirl.build(:check_password).save).to be false
	end

end

context "user" do 
	it "must have unique email" do 
		user1= FactoryGirl.create(:valid_user)
		user2= FactoryGirl.build(:valid_user)

		expect(user2.save).to be false

	end
end








end

