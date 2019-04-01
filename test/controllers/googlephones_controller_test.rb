require 'test_helper'

class GooglephonesControllerTest < ActionController::TestCase
  setup do
    @googlephone = googlephones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:googlephones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create googlephone" do
    assert_difference('Googlephone.count') do
      post :create, googlephone: { name: @googlephone.name }
    end

    assert_redirected_to googlephone_path(assigns(:googlephone))
  end

  test "should show googlephone" do
    get :show, id: @googlephone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @googlephone
    assert_response :success
  end

  test "should update googlephone" do
    patch :update, id: @googlephone, googlephone: { name: @googlephone.name }
    assert_redirected_to googlephone_path(assigns(:googlephone))
  end

  test "should destroy googlephone" do
    assert_difference('Googlephone.count', -1) do
      delete :destroy, id: @googlephone
    end

    assert_redirected_to googlephones_path
  end
end
