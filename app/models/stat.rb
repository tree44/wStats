class Stat < ActiveRecord::Base
  attr_accessible :Player, :Position, :a, :a_g, :bks, :eng, :es_toi, :es_toi_g, :esa, :esfol, :esfow, :esg, :esp, :first_g, :fo_perc, :fo_total, :fol, :fow, :g, :g_g, :g_misc, :ga, :gaa, :gp, :gs, :gva, :gwg, :hits, :l, :major, :match_pen, :minor, :misc, :mss, :ot, :otg, :p, :p_g, :pim, :plus_minus, :pp_toi, :pp_toi_g, :ppa, :ppfol, :ppfow, :ppg, :ppp, :ps, :s_g, :sa, :sft_g, :sh_toi, :sh_toi_g, :sha, :shfol, :shfow, :shg, :shifts, :shot_perc, :shots, :shp, :so, :sv, :sv_perc, :tka, :toi, :toi_g, :toi_s, :total_so_g, :total_so_gdg, :total_so_s, :w
  attr_accessible :user1
end
