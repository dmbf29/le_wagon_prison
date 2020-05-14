class Criminal < ApplicationRecord
  belongs_to :prison
  # creates the method .convictions
  has_many :convictions
  # creates the method .crimes
  has_many :crimes, through: :convictions
  validates :name, presence: true
  validates :sentence_days, presence: true, numericality: true
  validates :image_url, presence: true
end
