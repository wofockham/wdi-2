require 'test_helper'

class ButterfliesControllerTest < ActionController::TestCase
  setup do
    @butterfly = butterflies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:butterflies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create butterfly" do
    assert_difference('Butterfly.count') do
      post :create, butterfly: { latin_name: @butterfly.latin_name, name: @butterfly.name, picture: @butterfly.picture }
    end

    assert_redirected_to butterfly_path(assigns(:butterfly))
  end

  test "should show butterfly" do
    get :show, id: @butterfly
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @butterfly
    assert_response :success
  end

  test "should update butterfly" do
    put :update, id: @butterfly, butterfly: { latin_name: @butterfly.latin_name, name: @butterfly.name, picture: @butterfly.picture }
    assert_redirected_to butterfly_path(assigns(:butterfly))
  end

  test "should destroy butterfly" do
    assert_difference('Butterfly.count', -1) do
      delete :destroy, id: @butterfly
    end

    assert_redirected_to butterflies_path
  end
end
