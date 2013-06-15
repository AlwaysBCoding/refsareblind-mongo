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

# DELEGATIONS

# CALLBACKS

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

# PRIVATE METHODS
private

end
