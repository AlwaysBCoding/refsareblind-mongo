class User
# ATTRIBUTES
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::SecurePassword

  field :firstname, type: String
  field :lastname, type: String
  field :email, type: String
  field :password_digest, type: String
  field :active, type: Boolean, default: true
  field :stripe_customer_id, type: String

# ASSOCIATIONS
	has_many :entries
	has_many :owned_pools, class_name: "Pool", inverse_of: "owner"

# VALIDATIONS
	validates :email, presence: true, uniqueness: true, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, message: "Email address is not formatted correctly" }

# SPECIAL FEATURES
	has_secure_password

# SCOPES

# DELEGATIONS
	def pools
		Pool.in(id: entries.map(&:pool_id))
	end

# CALLBACKS
	before_validation on: :create do
		self.email = self.email.downcase
	end

# CONFIG METHODS
	def to_s
		"#{firstname} #{lastname}"
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
