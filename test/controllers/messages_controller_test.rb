require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get message" do
    get :message
    assert_response :success
  end

end
