class NflTeam
# ATTRIBUTES
  include Mongoid::Document
  include Mongoid::Timestamps

  field :city, type: String
  field :conference, type: String
  field :division, type: String
  field :name, type: String
  field :abbr, type: String

# ASSOCIATIONS
	has_many :nfl_picks
	has_many :home_games, class_name: "NflMatchup", inverse_of: "home_team"
	has_many :away_games, class_name: "NflMatchup", inverse_of: "away_team"

# VALIDATIONS
	validates :city, presence: true
	validates :conference, presence: true, length: { maximum: 3 }
	validates :division, presence: true, length: { maximum: 5 }
	validates :name, presence: true
	validates :abbr, presence: true, length: { maximum: 3 }

# SPECIAL FEATURES

# SCOPES

# DELEGATIONS
	def games_played
		self.home_games + self.away_games
	end

# CALLBACKS

# CONFIG METHODS
	def to_s
		"#{city.titleize} #{name.titleize}"
	end

	def to_param
	end

# CLASS METHODS

# INSTANCE METHODS

# PRIVATE METHODS
private

end
