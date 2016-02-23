class Voter < ActiveRecord::Base
  belongs_to :vote
  validates :name, presence: true
  validates :party, presence: true
  validates :token, presence: true, uniqueness: true
end
