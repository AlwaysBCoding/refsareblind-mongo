class PoolType
# ATTRIBUTES
  include Mongoid::Document
  include Mongoid::Timestamps

  field :sport, type: String
  field :name, type: String
  field :description, type: String
  field :rules, type: Array

# ASSOCIATIONS
	has_many :pools

# VALIDATIONS

# SPECIAL FEATURES

# SCOPES

# DELEGATIONS

# CALLBACKS

# CONFIG METHODS
	def to_s
		"#{name.titleize}"
	end

	def to_param
	end

# CLASS METHODS
	def self.survival
		self.where(name: "survival")
	end

	def self.supercontest
		self.where(name: "supercontest")
	end

	def self.custom_picks
		self.where(name: "custom-picks")
	end

# INSTANCE METHODS

# PRIVATE METHODS
private

end
