#This function has become complicated looking, but it is really just one central set of behaviors of the stained glass projectiles
#that has been expanded with tag conditionals modifying the behavior for certain types of glass projectiles.

function noi:spell/extra/glass_color
execute if entity @s[tag=noi.glass_pane_ball] positioned ^ ^ ^.5 run function noi:spell/extra/glass_color

#noi.tokill is removed at the end of the function, but the projectile is killed if it procs the next spell in any way before then
tag @s add noi.tokill

execute unless block ^ ^ ^.5 #noi:laser_pass_through unless entity @s[tag=noi.tinted_glass_ball] run return run function noi:spell/init with entity @s data

execute positioned ^ ^ ^.5 positioned ~-.75 ~-.75 ~-.75 run tag @e[tag=!noi.laser_ignore,dx=0,dy=0,dz=0,type=!marker,type=!interaction,type=!armor_stand,type=!#boat,type=!minecart,type=!#noi:chest_boat,type=!chest_minecart,type=!item_display,type=!painting,type=!item_frame,type=!glow_item_frame] add noi.target
execute positioned ^ ^ ^.5 positioned ~-.25 ~-.25 ~-.25 as @e[tag=!noi.laser_ignore,dx=0,dy=0,dz=0,tag=noi.target] run tag @s add noi.hit

tag @e[tag=noi.target,distance=..30] remove noi.target

tag @s add current
execute as @e[tag=noi.hit,distance=..30] at @s run return run function noi:spell/extra/stained_glass_trigger
tag @s remove current


execute if entity @s[tag=noi.glass_pane_ball] unless block ^ ^ ^1 #noi:laser_pass_through run return run function noi:spell/init with entity @s data

execute if entity @s[tag=noi.glass_pane_ball] positioned ^ ^ ^1 positioned ~-.75 ~-.75 ~-.75 run tag @e[tag=!noi.laser_ignore,dx=0,dy=0,dz=0,type=!marker,type=!interaction,type=!armor_stand,type=!#boat,type=!minecart,type=!#noi:chest_boat,type=!chest_minecart,type=!item_display,type=!painting,type=!item_frame,type=!glow_item_frame] add noi.target
execute if entity @s[tag=noi.glass_pane_ball] positioned ^ ^ ^1 positioned ~-.25 ~-.25 ~-.25 as @e[tag=!noi.laser_ignore,dx=0,dy=0,dz=0,tag=noi.target] run tag @s add noi.hit

execute if entity @s[tag=noi.glass_pane_ball] run tag @e[tag=noi.target,distance=..30] remove noi.target

execute if entity @s[tag=noi.glass_pane_ball] run tag @s add current
execute if entity @s[tag=noi.glass_pane_ball] as @e[tag=noi.hit,distance=..30] at @s run function noi:spell/extra/stained_glass_trigger
execute if entity @s[tag=noi.glass_pane_ball] run tag @s remove current


tag @s remove noi.tokill

execute if entity @s[tag=!noi.glass_pane_ball] run tp ^ ^ ^.5
execute if entity @s[tag=noi.glass_pane_ball] run tp ^ ^ ^1

