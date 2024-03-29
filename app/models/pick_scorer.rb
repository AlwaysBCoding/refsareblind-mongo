class PickScorer

	def self.score_pick(pick)
		winning_team = pick.pool.configurations["spreads"] == true ? pick.nfl_matchup.winning_team_with_spread : pick.nfl_matchup.winning_team ;

		if winning_team == "tie"
			pick.update_attributes(result: "tie")
		elsif winning_team == pick.nfl_team_id
			pick.update_attributes(result: "win")
		elsif winning_team && winning_team != pick.nfl_team_id
			pick.update_attributes(result: "loss")
		end
	end

# DEBUG METHODS
	def self.lock_picks
		NflPick.where(locked: false).each { |pick| pick.update_attributes(locked: true) }
	end

	def self.finalize_matchups
		NflMatchup.where(interval: CURRENT_NFL_WEEK).each { |matchup| matchup.update_attributes(state: "final") }
	end

end
