require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  test "should get create" do
    post :create, votes(:one).voter_id
    assert_response :success
  end

  test "should get destroy" do
    delete :destroy
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
