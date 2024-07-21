tp ^ ^ ^.5
execute unless block ~ ~ ~ #noi:ball_pass_through run kill
tp ^ ^ ^1
particle item{item:"iron_nugget"} ~ ~ ~ 0 0 0 0 1
execute unless block ~ ~ ~ #noi:ball_pass_through run kill
execute positioned ~-.5 ~-.5 ~-.5 if entity @e[dx=0,dy=0,dz=0,type=!marker,type=!interaction,type=!item_display,type=!block_display,type=!painting,type=!item_frame,type=!glow_item_frame] run kill
tp ^ ^ ^1.5
execute unless block ~ ~ ~ #noi:ball_pass_through run kill
tp ^ ^ ^2
particle item{item:"iron_nugget"} ~ ~ ~ 0 0 0 0 1
execute unless block ~ ~ ~ #noi:ball_pass_through run kill
execute positioned ~-.5 ~-.5 ~-.5 if entity @e[dx=0,dy=0,dz=0,type=!marker,type=!interaction,type=!item_display,type=!block_display,type=!painting,type=!item_frame,type=!glow_item_frame] run kill

