FactoryGirl.define do

	factory :pool do
		active true

		factory :nfl_survival do
			name "Refs Are Blind Survival"
			slug "refs-are-blind-survival"
			payment_settled true
			access_code "access123"
			# configurations {
			# 	sport: "NFL",
			# 	elimination: true,
			# 	picks_per_week: 1,
			# 	spreads: false,
			# 	same_team_limit: 1,
			# 	losses_to_eliminate: 1,
			# 	number_of_intervals: 17,
			# 	aggregate_winner: true
			# }
		end

		factory :nfl_supercontest do
			sequence(:name) { |n| "Refs Are Blind Supercontest#{n}" }
			sequence(:slug) { |n| "refs-are-blind-supercontest#{n}" }
			payment_settled true
			access_code "access123"
			# configurations {
			# 	sport: "NFL",
			# 	scored: true,
			# 	picks_per_week: 5,
			# 	spreads: true,
			# 	allow_ties: true
			# 	number_of_intervals: 17,
			# 	aggregate_winner: true
			# }
		end

	end

end
