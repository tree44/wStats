# rails generate scaffold Stat Player:string Position:string a:integer a_g:decimal bks:integer eng:integer es_toi:integer es_toi_g:integer esa:integer esfol:integer esfow:integer esg:integer esp:integer first_g:integer fo_perc:decimal fo_total:integer fol:integer fow:integer g:integer g_g:decimal g_misc:integer gp:integer gva:integer gwg:integer hits:integer major:integer match_pen:integer minor:integer misc:integer mss:integer otg:integer p:integer p_g:decimal pim:integer plus_minus:integer pp_toi:integer pp_toi_g:integer ppa:integer ppfol:integer ppfow:integer ppg:integer ppp:integer ps:integer s_g:integer sft_g:decimal sh_toi:integer sh_toi_g:integer sha:integer shfol:integer shfow:integer shg:integer shifts:integer shot_perc:decimal shots:integer shp:integer tka:integer toi:integer toi_g:integer toi_s:integer total_so_g:integer total_so_gdg:integer total_so_s:integer gs:integer w:integer l:integer ot:integer sa:integer ga:integer gaa:decimal sv:integer sv_perc:decimal so:integer
# rails generate migration AddUser1ToStats user1:integer
class Stat < ActiveRecord::Base
  attr_accessible :Player, :Position, :a, :a_g, :bks, :eng, :es_toi, :es_toi_g, :esa, :esfol, :esfow, :esg, :esp, :first_g, :fo_perc, :fo_total, :fol, :fow, :g, :g_g, :g_misc, :ga, :gaa, :gp, :gs, :gva, :gwg, :hits, :l, :major, :match_pen, :minor, :misc, :mss, :ot, :otg, :p, :p_g, :pim, :plus_minus, :pp_toi, :pp_toi_g, :ppa, :ppfol, :ppfow, :ppg, :ppp, :ps, :s_g, :sa, :sft_g, :sh_toi, :sh_toi_g, :sha, :shfol, :shfow, :shg, :shifts, :shot_perc, :shots, :shp, :so, :sv, :sv_perc, :tka, :toi, :toi_g, :toi_s, :total_so_g, :total_so_gdg, :total_so_s, :w
  attr_accessible :user1
end
