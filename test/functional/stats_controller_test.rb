require 'test_helper'

class StatsControllerTest < ActionController::TestCase
  setup do
    @stat = stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stat" do
    assert_difference('Stat.count') do
      post :create, stat: { Player: @stat.Player, Position: @stat.Position, a: @stat.a, a_g: @stat.a_g, bks: @stat.bks, eng: @stat.eng, es_toi: @stat.es_toi, es_toi_g: @stat.es_toi_g, esa: @stat.esa, esfol: @stat.esfol, esfow: @stat.esfow, esg: @stat.esg, esp: @stat.esp, first_g: @stat.first_g, fo_perc: @stat.fo_perc, fo_total: @stat.fo_total, fol: @stat.fol, fow: @stat.fow, g: @stat.g, g_g: @stat.g_g, g_misc: @stat.g_misc, ga: @stat.ga, gaa: @stat.gaa, gp: @stat.gp, gs: @stat.gs, gva: @stat.gva, gwg: @stat.gwg, hits: @stat.hits, l: @stat.l, major: @stat.major, match_pen: @stat.match_pen, minor: @stat.minor, misc: @stat.misc, mss: @stat.mss, ot: @stat.ot, otg: @stat.otg, p: @stat.p, p_g: @stat.p_g, pim: @stat.pim, plus_minus: @stat.plus_minus, pp_toi: @stat.pp_toi, pp_toi_g: @stat.pp_toi_g, ppa: @stat.ppa, ppfol: @stat.ppfol, ppfow: @stat.ppfow, ppg: @stat.ppg, ppp: @stat.ppp, ps: @stat.ps, s_g: @stat.s_g, sa: @stat.sa, sft_g: @stat.sft_g, sh_toi: @stat.sh_toi, sh_toi_g: @stat.sh_toi_g, sha: @stat.sha, shfol: @stat.shfol, shfow: @stat.shfow, shg: @stat.shg, shifts: @stat.shifts, shot_perc: @stat.shot_perc, shots: @stat.shots, shp: @stat.shp, so: @stat.so, sv: @stat.sv, sv_perc: @stat.sv_perc, tka: @stat.tka, toi: @stat.toi, toi_g: @stat.toi_g, toi_s: @stat.toi_s, total_so_g: @stat.total_so_g, total_so_gdg: @stat.total_so_gdg, total_so_s: @stat.total_so_s, w: @stat.w }
    end

    assert_redirected_to stat_path(assigns(:stat))
  end

  test "should show stat" do
    get :show, id: @stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stat
    assert_response :success
  end

  test "should update stat" do
    put :update, id: @stat, stat: { Player: @stat.Player, Position: @stat.Position, a: @stat.a, a_g: @stat.a_g, bks: @stat.bks, eng: @stat.eng, es_toi: @stat.es_toi, es_toi_g: @stat.es_toi_g, esa: @stat.esa, esfol: @stat.esfol, esfow: @stat.esfow, esg: @stat.esg, esp: @stat.esp, first_g: @stat.first_g, fo_perc: @stat.fo_perc, fo_total: @stat.fo_total, fol: @stat.fol, fow: @stat.fow, g: @stat.g, g_g: @stat.g_g, g_misc: @stat.g_misc, ga: @stat.ga, gaa: @stat.gaa, gp: @stat.gp, gs: @stat.gs, gva: @stat.gva, gwg: @stat.gwg, hits: @stat.hits, l: @stat.l, major: @stat.major, match_pen: @stat.match_pen, minor: @stat.minor, misc: @stat.misc, mss: @stat.mss, ot: @stat.ot, otg: @stat.otg, p: @stat.p, p_g: @stat.p_g, pim: @stat.pim, plus_minus: @stat.plus_minus, pp_toi: @stat.pp_toi, pp_toi_g: @stat.pp_toi_g, ppa: @stat.ppa, ppfol: @stat.ppfol, ppfow: @stat.ppfow, ppg: @stat.ppg, ppp: @stat.ppp, ps: @stat.ps, s_g: @stat.s_g, sa: @stat.sa, sft_g: @stat.sft_g, sh_toi: @stat.sh_toi, sh_toi_g: @stat.sh_toi_g, sha: @stat.sha, shfol: @stat.shfol, shfow: @stat.shfow, shg: @stat.shg, shifts: @stat.shifts, shot_perc: @stat.shot_perc, shots: @stat.shots, shp: @stat.shp, so: @stat.so, sv: @stat.sv, sv_perc: @stat.sv_perc, tka: @stat.tka, toi: @stat.toi, toi_g: @stat.toi_g, toi_s: @stat.toi_s, total_so_g: @stat.total_so_g, total_so_gdg: @stat.total_so_gdg, total_so_s: @stat.total_so_s, w: @stat.w }
    assert_redirected_to stat_path(assigns(:stat))
  end

  test "should destroy stat" do
    assert_difference('Stat.count', -1) do
      delete :destroy, id: @stat
    end

    assert_redirected_to stats_path
  end
end
