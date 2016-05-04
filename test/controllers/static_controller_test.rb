require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get how_it_works" do
    get :how_it_works
    assert_response :success
  end

  test "should get privacy_policy" do
    get :privacy_policy
    assert_response :success
  end

end
