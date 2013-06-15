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

# VALIDATIONS
	validates :city, presence: true
	validates :conference, presence: true, length: { maximum: 3 }
	validates :division, presence: true, length: { maximum: 5 }
	validates :name, presence: true
	validates :abbr, presence: true, length: { maximum: 3 }

# SPECIAL FEATURES

# SCOPES

# DELEGATIONS

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
