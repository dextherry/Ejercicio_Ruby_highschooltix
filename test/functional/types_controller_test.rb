require 'test_helper'

class TypesControllerTest < ActionController::TestCase
  test "should get administrator" do
    get :administrator
    assert_response :success
  end

  test "should get booster" do
    get :booster
    assert_response :success
  end

  test "should get fan" do
    get :fan
    assert_response :success
  end

end
