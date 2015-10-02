class Asset < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :zip, using: :us_zip
end
