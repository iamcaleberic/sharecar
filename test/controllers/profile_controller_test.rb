require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  
include Devise::TestHelpers
  test "should get index" do
    get :index
    assert_response :success
  end

end
