class NflMatchup
# ATTRIBUTES
  include Mongoid::Document
  include Mongoid::Timestamps

  field :interval, type: Integer
  field :point_spread, type: Float
  field :home_team_score, type: Integer
  field :away_team_score, type: Integer
  field :state, type: String

# ASSOCIATIONS
	has_many :nfl_picks
	belongs_to :home_team, class_name: "NflTeam", inverse_of: "home_games"
	belongs_to :away_team, class_name: "NflTeam", inverse_of: "away_games"

# VALIDATIONS
	validates :home_team_id, presence: { message: "Nfl Matchup must contain a home team" }
	validates :away_team_id, presence: { message: "Nfl Matchup must contain an away team" }

# SPECIAL FEATURES

# SCOPES
	["not_started", "in_progress", "final"].each do |state|
		scope state, -> { where(state: state) }
	end

	scope :current_interval, -> { where(interval: CURRENT_NFL_WEEK) }

# DELEGATIONS

# CALLBACKS
	after_save :notify_pick_scorer_if_matchup_is_final

# CONFIG METHODS
	def to_s
	end

	def to_param
	end

	### Potential Ideas
	###################
	# def interval_name
	# end

# CLASS METHODS

# INSTANCE METHODS
	def winning_team
		if self.state == "final"
			return home_team_id if home_team_score > away_team_score
			return away_team_id if away_team_score > home_team_score
			return "tie" if home_team_score == away_team_score
		end
	end

	def winning_team_with_spread
		if self.state == "final"
			return home_team_id if home_team_score > away_team_score + point_spread
			return away_team_id if away_team_score + point_spread > home_team_score
			return "tie" if home_team_score == away_team_score + point_spread
		else
			return nil
		end
	end

# PRIVATE METHODS
private
	def notify_pick_scorer_if_matchup_is_final
		if self.state_changed? && self.state == "final"
			nfl_picks.each { |pick| PickScorer.score_pick(pick) }
		end
	end

end
