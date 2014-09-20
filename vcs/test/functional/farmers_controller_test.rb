require 'test_helper'

class FarmersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farmers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create farmer" do
    assert_difference('Farmer.count') do
      post :create, :farmer => { }
    end

    assert_redirected_to farmer_path(assigns(:farmer))
  end

  test "should show farmer" do
    get :show, :id => farmers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => farmers(:one).to_param
    assert_response :success
  end

  test "should update farmer" do
    put :update, :id => farmers(:one).to_param, :farmer => { }
    assert_redirected_to farmer_path(assigns(:farmer))
  end

  test "should destroy farmer" do
    assert_difference('Farmer.count', -1) do
      delete :destroy, :id => farmers(:one).to_param
    end

    assert_redirected_to farmers_path
  end
end
