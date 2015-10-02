class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  has_many :assets
  validates_formatting_of :zip, using: :us_zip
  validates_formatting_of :phone, using: :us_phone
  validates_formatting_of :website, using: :url
end
