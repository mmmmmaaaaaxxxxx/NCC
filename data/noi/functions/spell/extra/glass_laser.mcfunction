scoreboard players add i noi.math 1
$particle dust{color:[$(color)], scale:.75} ~ ~ ~ 0 0 0 1 0 normal
scoreboard players set #continue noi.math 0
execute if score i noi.math matches ..15 positioned ^ ^ ^.5 positioned ~-.75 ~-.75 ~-.75 run tag @e[tag=!noi.laser_ignore,dx=0,dy=0,dz=0,type=!marker,type=!interaction,type=!armor_stand,type=!boat,type=!minecart,type=!chest_boat,type=!chest_minecart,type=!item_display,type=!painting,type=!item_frame,type=!glow_item_frame] add noi.target
execute if score i noi.math matches ..15 positioned ^ ^ ^.5 if block ~ ~ ~ #noi:laser_pass_through positioned ~-.25 ~-.25 ~-.25 unless entity @e[tag=!noi.laser_ignore,dx=0,dy=0,dz=0,tag=noi.target] run scoreboard players set #continue noi.math 1
tag @e[tag=noi.target] remove noi.target
execute if score #continue noi.math matches 0 run summon marker ~ ~ ~ {Tags:[current,noi.tokill]}
$execute if score #continue noi.math matches 1 positioned ^ ^ ^.5 run function noi:spell/extra/glass_laser {color:"$(color)"}