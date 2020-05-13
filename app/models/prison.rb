class Prison < ApplicationRecord
  # asssociations
  # creates the .criminals method
  has_many :criminals
  # validations
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true
end

