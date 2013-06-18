class NflPicksController < AuthenticatedController
	before_action :set_pool
	before_action :set_entry
	before_action :set_matchups, only: [:new]

	def new
		@available_teams = NflTeam.all - @current_entry.nfl_teams_used
	end

	def create
		params["matchups"].each do |matchup, team|
			@current_entry.nfl_picks.create! nfl_matchup_id: matchup, nfl_team_id: team
		end
		flash[:notice] = "Your picks were successfully created"
		redirect_to new_pool_pick_url(@pool.slug)
	end

private
	def set_matchups
		@matchups = NflMatchup.current_interval
	end

end
