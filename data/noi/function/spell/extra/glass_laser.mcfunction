scoreboard players add i noi.math 1
execute unless block ~ ~ ~ #noi:laser_pass_through run return fail
execute if score i noi.math matches 30.. run return fail
particle dust{color:[0.690,0.918,1.000],scale:2} ~ ~ ~ 0 0 0 1 0 normal
execute positioned ^ ^ ^.5 positioned ~-.75 ~-.75 ~-.75 run tag @e[tag=!noi.laser_ignore,dx=0,dy=0,dz=0,type=!marker,type=!interaction,type=!item_display,type=!painting,type=!item_frame,type=!glow_item_frame] add noi.target
execute positioned ^ ^ ^.5 positioned ~-.25 ~-.25 ~-.25 as @e[tag=!noi.laser_ignore,dx=0,dy=0,dz=0,tag=noi.target,sort=random] run return run tag @s add current

execute positioned ^ ^ ^.5 run function noi:spell/extra/glass_laser
