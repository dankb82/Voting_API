require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get show" do
    get :show, id: voters(:one).id, token: voters(:one).token
    assert_response :success
  end

  test "should get update" do
    patch :update, id: voters(:one).id, token: voters(:one).token, name:
    "John Doe"

    assert_response :success
  end

end
