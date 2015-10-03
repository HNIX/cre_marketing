class User < ActiveRecord::Base
  #include Concerns::UserImagesConcern
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  has_many :assets
  validates_formatting_of :zip, using: :us_zip
  validates_formatting_of :phone, using: :us_phone
  validates_formatting_of :website, using: :url

  def display_name
    first_name.presence || email.split('@')[0]
  end

  # Case insensitive email lookup.
  #
  # See Devise.config.case_insensitive_keys.
  # Devise does not automatically downcase email lookups.
  def self.find_by_email(email)
    find_by(email: email.downcase)
    # Use ILIKE if using PostgreSQL and Devise.config.case_insensitive_keys=[]
    #where('email ILIKE ?', email).first
  end

  # Do not require email confirmation to login or perform actions
  def confirmation_required?
    true
  end

  def active_for_authentication?
    super && approved?
  end

  def inactive_message
    if !approved?
      :not_approved
    else
      super # Use whatever other message
    end
  end


  rails_admin do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :confirmed_at, :datetime
    field :approved, :boolean
    field :is_admin, :boolean
  end
end
