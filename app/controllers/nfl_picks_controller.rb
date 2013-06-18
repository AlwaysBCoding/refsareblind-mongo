class NflPicksController < AuthenticatedController
	before_action :set_pool
	before_action :set_entry
	before_action :set_matchups, only: [:new]

	def new
		@available_teams = NflTeam.all - @current_entry.nfl_teams_used
	end

private
	def set_matchups
		@matchups = NflMatchup.current_interval
	end

end
