FactoryGirl.define :pool_types do

	factory :pool_type do

		factory :pool_type_survival do
			name "survival"
		end

		factory :pool_type_supercontest do
			name "supercontest"
		end

		factory :pool_type_custom_picks do
			name "custom-picks"
		end

	end

end
