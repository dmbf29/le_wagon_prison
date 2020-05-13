class Criminal < ApplicationRecord
  belongs_to :prison
  validates :name, presence: true
  validates :sentence_days, presence: true, numericality: true
  validates :image_url, presence: true
end
