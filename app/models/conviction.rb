class Conviction < ApplicationRecord
  belongs_to :criminal
  belongs_to :crime
  validates_uniqueness_of :criminal, scope: :crime
end
