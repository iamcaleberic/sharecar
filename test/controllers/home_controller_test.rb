require 'test_helper'

class HomeControllerTest < ActionController::TestCase
include Devise::TestHelpers
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should render home header" do
  	get :index
  	assert_response  :success
  end
  test "should render footer" do 
  	get :index
  	assert_response :success
  end
end
