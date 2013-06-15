FactoryGirl.define :users do

	factory :user do
		firstname "Jordan"
		lastname "Leigh"
		email "AlwaysBCoding@gmail.com"
		password "testing123"
		password_confirmation "testing123"
	end

end
