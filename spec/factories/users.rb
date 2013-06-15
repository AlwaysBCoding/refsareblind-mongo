FactoryGirl.define do

	factory :user do

		factory :jordan do
			firstname "Jordan"
			lastname "Leigh"
			email "AlwaysBCoding@gmail.com"
			password "testing123"
			password_confirmation "testing123"
		end

		factory :andrew do
			firstname "Andrew"
			lastname "Chambers"
			email "DrewChambersDC@gmail.com"
			password "testing123"
			password_confirmation "testing123"
		end

	end

end
