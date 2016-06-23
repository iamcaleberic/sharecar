require 'test_helper'

class SharesControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  setup do
    @share = shares(:one)
    sign_in users(:one)
  end

  test "should get index" do

    get :index
    assert_response :success
    assert_not_nil assigns(:shares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create share" do
    assert_difference('Share.count') do
      post :create, share: { body: @share.body, car_make: @share.car_make, created_at: @share.created_at, date: @share.date, distance: @share.distance, experience: @share.experience, location: @share.location, luggage: @share.luggage, price: @share.price, route: @share.route, updated_at: @share.updated_at, username: @share.username , user_id: @share.user_id, superuser_id: @share.superuser_id }
    end

    assert_redirected_to share_path(assigns(:share))
  end

  test "should show share" do
    get :show, id: @share
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @share
    assert_response :success
  end

  test "should update share" do
    patch :update, id: @share, share: { body: @share.body, car_make: @share.car_make, created_at: @share.created_at, date: @share.date, distance: @share.distance, experience: @share.experience, location: @share.location, luggage: @share.luggage, price: @share.price, route: @share.route, updated_at: @share.updated_at, username: @share.username , user_id: @share.user_id, superuser_id: @share.superuser_id}
    assert_redirected_to share_path(assigns(:share))
  end

  test "should destroy share" do
    assert_difference('Share.count', -1) do
      delete :destroy, id: @share
    end

    assert_redirected_to shares_path
  end

end
