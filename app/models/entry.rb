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

# PRIVATE METHODS
private

end
