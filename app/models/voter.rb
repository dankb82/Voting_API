class Voter < ActiveRecord::Base
  has_one :vote

  validates :name, presence: true
  validates :party, presence: true
  validates :token, presence: true, uniqueness: true

  # before_validation :ensure_token_has_a_value

  #  private def ensure_token_has_a_value
  #    if token.nil?
  #    end
  #  end
end
