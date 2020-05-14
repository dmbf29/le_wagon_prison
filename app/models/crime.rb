class Crime < ApplicationRecord
  has_many :convictions
  validates :name, presence: true, uniqueness: true

  def to_label
    name.capitalize
  end
end
