require 'test_helper'

class ProjsControllerTest < ActionController::TestCase
  setup do
    @proj = projs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proj" do
    assert_difference('Proj.count') do
      post :create, proj: { a: @proj.a, g: @proj.g, gp: @proj.gp, pim: @proj.pim, player: @proj.player, plus_minus: @proj.plus_minus, pos: @proj.pos, ppp: @proj.ppp, pts: @proj.pts, rank: @proj.rank, team: @proj.team }
    end

    assert_redirected_to proj_path(assigns(:proj))
  end

  test "should show proj" do
    get :show, id: @proj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proj
    assert_response :success
  end

  test "should update proj" do
    put :update, id: @proj, proj: { a: @proj.a, g: @proj.g, gp: @proj.gp, pim: @proj.pim, player: @proj.player, plus_minus: @proj.plus_minus, pos: @proj.pos, ppp: @proj.ppp, pts: @proj.pts, rank: @proj.rank, team: @proj.team }
    assert_redirected_to proj_path(assigns(:proj))
  end

  test "should destroy proj" do
    assert_difference('Proj.count', -1) do
      delete :destroy, id: @proj
    end

    assert_redirected_to projs_path
  end
end
