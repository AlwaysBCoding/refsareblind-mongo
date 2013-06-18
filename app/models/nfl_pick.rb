class NflPick
# ATTRIBUTES
  include Mongoid::Document
  include Mongoid::Timestamps

  field :locked, type: Boolean, default: false
  field :result, type: String

# ASSOCIATIONS
	belongs_to :entry
	belongs_to :nfl_matchup
	belongs_to :nfl_team

# VALIDATIONS
	validates :nfl_matchup_id, presence: { message: "Nfl Pick must belong to an Nfl Matchup" }
	validates :entry_id, presence: { message: "Nfl Pick must belong to an Entry" }
	validates :nfl_team_id, presence: { message: "Nfl Pick must belong to an Nfl Team" }

# SPECIAL FEATURES

# SCOPES

# DELEGATIONS
	def pool
		self.entry.pool
	end

# CALLBACKS

# CONFIG METHODS
	def to_s
	end

	def to_param
	end

# CLASS METHODS

# INSTANCE METHODS

# PRIVATE METHODS
private

end
