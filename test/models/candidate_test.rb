require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "Candidate class exists" do
    assert Candidate
  end

  test "candidates must have names" do
  assert_raises do c = Candidate.create!(hometown: "Raleigh", district: "22nd", party: "Independent")end
  end

end
