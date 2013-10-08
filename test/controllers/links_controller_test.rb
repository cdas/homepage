require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
