require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "Vote class exists" do
    assert Vote
  end

  test "vote has candidate_id and voter_id" do
    assert_raises do Vote.create!end
  end
end
