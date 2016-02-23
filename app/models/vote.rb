class Vote < ActiveRecord::Base
  has_many :candidates
  has_many :voters

  validates :voter_id, presence: true
  validates :candidate_id, presence: true
end
