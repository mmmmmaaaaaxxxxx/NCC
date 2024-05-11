### @s = aec
scoreboard players remove %bounce noi.math 1

execute unless block ~0.5 ~ ~ #noi:ball_pass_through store result entity @e[type=marker,tag=current,limit=1] Rotation[0] float -1 run data get entity @e[type=marker,tag=current,limit=1] Rotation[0]
execute unless block ~-0.5 ~ ~ #noi:ball_pass_through store result entity @e[type=marker,tag=current,limit=1] Rotation[0] float -1 run data get entity @e[type=marker,tag=current,limit=1] Rotation[0]
execute unless block ~ ~0.5 ~ #noi:ball_pass_through store result entity @e[type=marker,tag=current,limit=1] Rotation[1] float -1 run data get entity @e[type=marker,tag=current,limit=1] Rotation[1]
execute unless block ~ ~-0.5 ~ #noi:ball_pass_through store result entity @e[type=marker,tag=current,limit=1] Rotation[1] float -1 run data get entity @e[type=marker,tag=current,limit=1] Rotation[1]
execute unless block ~ ~ ~0.5 #noi:ball_pass_through run function noi:math/raycast/zplane
execute unless block ~ ~ ~-0.5 #noi:ball_pass_through run function noi:math/raycast/zplane

#execute rotated as @s run function bounce:raycast/loop