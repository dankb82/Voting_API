require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "Voter class exists" do
    assert Voter
  end

  test "voter must have unique token" do
    a = Voter.create!(name: "Dan", party: "Independent", token: "aaa000")
    assert_raises do b = Voter.create!(name: "Dave", party: "Republican", token: "aaa000")end
  end
end
