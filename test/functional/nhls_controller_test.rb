require 'test_helper'

class NhlsControllerTest < ActionController::TestCase
  setup do
    @nhl = nhls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nhls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nhl" do
    assert_difference('Nhl.count') do
      post :create, nhl: {  }
    end

    assert_redirected_to nhl_path(assigns(:nhl))
  end

  test "should show nhl" do
    get :show, id: @nhl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nhl
    assert_response :success
  end

  test "should update nhl" do
    put :update, id: @nhl, nhl: {  }
    assert_redirected_to nhl_path(assigns(:nhl))
  end

  test "should destroy nhl" do
    assert_difference('Nhl.count', -1) do
      delete :destroy, id: @nhl
    end

    assert_redirected_to nhls_path
  end
end
