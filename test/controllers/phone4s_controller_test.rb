require 'test_helper'

class Phone4sControllerTest < ActionController::TestCase
  setup do
    @phone4 = phone4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phone4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phone4" do
    assert_difference('Phone4.count') do
      post :create, phone4: { name: @phone4.name }
    end

    assert_redirected_to phone4_path(assigns(:phone4))
  end

  test "should show phone4" do
    get :show, id: @phone4
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phone4
    assert_response :success
  end

  test "should update phone4" do
    patch :update, id: @phone4, phone4: { name: @phone4.name }
    assert_redirected_to phone4_path(assigns(:phone4))
  end

  test "should destroy phone4" do
    assert_difference('Phone4.count', -1) do
      delete :destroy, id: @phone4
    end

    assert_redirected_to phone4s_path
  end
end
