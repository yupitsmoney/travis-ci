FactoryGirl.define do

##GENERAL
	

	factory :valid_user, class: User do
	    email "test@test.com"
	    password "password"
	    password_confirmation "password"
 	end


 	factory :valid_email, class: User do 
	 	email nil
	 	password ""
	 	password_confirmation ""

	end

	factory :limit_email, class: User do 
		email "sweeetiesadknasdipasjdpiajdsiajsdisjadpoajsdpjaspodjaopsdjfodfbdfkgoskdfoasjdfcasdfaodifgjsweeetiesadknasdipasjdpiajdsiajsdisjadpoajsdpjaspodjaopsdjfodfbdfkgoskdfoasjdfcasdfaodifgjsweeetiesadknasdipasjdpiajdsiajsdisjadpoajsdpjaspodjaopsdjfodfbdfkgoskdfoasjdfcasdfaodifgjsweeetiesadknasdipasjdpiajdsiajsdisjadpoajsdpjaspodjaopsdjfodfbdfkgoskdfoasjdfcasdfaodifgj@money.com"
		password "12345"
		password_confirmation "12345"

	end

	factory :minimum_password, class: User do 
		email "dasd@sda.com"
		password "12345"
		password_confirmation "12345"
	end

	factory :check_password, class: User do 
		email "sda@dsa.com"
		password "12345"
		password_confirmation "23242"
	end




	
end