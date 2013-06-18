FactoryGirl.define do

	factory :nfl_matchup do
		state "not_started"

		factory :home_team_wins_and_covers do
			home_team_id 1
			away_team_id 2
			interval 1
			point_spread 5.5
			home_team_score 20
			away_team_score 14
		end

		factory :home_team_loses_but_covers do
			home_team_id 3
			away_team_id 4
			interval 2
			point_spread -3
			home_team_score 20
			away_team_score 21
		end

		factory :home_team_loses_and_doesnt_cover do
			home_team_id 7
			away_team_id 8
			interval 4
			point_spread 3
			home_team_score 19
			away_team_score 30
		end

		factory :tie_game do
			home_team_id 5
			away_team_id 6
			interval 3
			point_spread -3.5
			home_team_score 17
			away_team_score 17
		end

	end

end
