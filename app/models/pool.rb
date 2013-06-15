class Pool
# ATTRIBUTES
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :slug, type: String
  field :active, type: Boolean, default: true
  field :open_to_public, type: Boolean, default: false
  field :payment_settled, type: Boolean, default: false
  field :access_code, type: String
  field :settings, type: Array

# ASSOCIATIONS
	belongs_to :pool_type
	has_many :entries
	# belongs_to :user

# VALIDATIONS
	validates :name, presence: true, uniqueness: true
	validates :slug, presence: true, uniqueness: true
	validates :access_code, presence: true, unless: :open_to_public?
	validates :pool_type_id, presence: true

# SPECIAL FEATURES

# SCOPES
	scope :open_to_public, -> { where(open_to_public: true) }

# DELEGATIONS
	def users
		User.in(id: entries.map(&:user_id))
	end

# CALLBACKS
	before_validation on: :create do
		self.slug = self.name.parameterize if self.name.present?
	end

# CONFIG METHODS
	def to_s
		"#{name}"
	end

	def to_param
		self.slug
	end

	def destroy
		self.update_attribute("active", false)
	end

# CLASS METHODS

# INSTANCE METHODS

# PRIVATE METHODS
private

end
