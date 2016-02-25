require 'securerandom'

class Voter < ActiveRecord::Base
  has_one :vote
  before_validation :generate_token
  validates :name, presence: true
  validates :party, presence: true
  validates :token, presence: true, uniqueness: true


   private def generate_token
     self.token = SecureRandom.hex
   end
end
