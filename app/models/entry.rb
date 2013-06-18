class Entry
# ATTRIBUTES
  include Mongoid::Document
  include Mongoid::Timestamps

  field :role, type: String, default: 'member'
  field :name, type: String
  field :active, type: Boolean, default: true
  field :approved, type: Boolean, default: false

# ASSOCIATIONS
	belongs_to :user
	belongs_to :pool
	has_many :nfl_picks

# VALIDATIONS
	validates :user_id, presence: { message: "Entry must belong to a user" }
	validates :pool_id, presence: { message: "Entry must belong to a pool" }

# SPECIAL FEATURES

# SCOPES

# DELEGATIONS

# CALLBACKS

# CONFIG METHODS
	def to_s
		self.name.present? ? "#{self.name}" : "#{self.user}" ;
	end

	def to_param
	end

	def destroy
		self.update_attribute("active", false)
	end

# CLASS METHODS

# INSTANCE METHODS
	def interval_picks(interval, locked)
		nfl_matchups = nfl_picks.where(locked: locked).pluck(:nfl_matchup_id)
		nfl_matchups_in_interval = NflMatchup.where(interval: interval).find(nfl_matchups).map(&:id)
		interval_picks =  nfl_picks.any_in(nfl_matchup_id: nfl_matchups_in_interval).pluck(:nfl_team_id)
		return NflTeam.find(interval_picks)
	end

	def nfl_teams_used
		teams_used_ids = nfl_picks.where(locked: true).pluck(:nfl_team_id)
		return NflTeam.find(teams_used_ids)
	end

	def total_score(picks)
		picks.where(result: "win").count + picks.where(result: "tie").count / 2.0
	end

# PRIVATE METHODS
private

end
