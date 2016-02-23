class Candidate < ActiveRecord::Base
  belongs_to :vote

  validates :name, presence: true
  validates :hometown, presence: true
  validates :district, presence: true
  validates :party, presence: true
end
