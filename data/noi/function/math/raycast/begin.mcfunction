#All raycast functions were copied from Cloudwolf https://www.youtube.com/watch?v=GNzEHOuCfrQ
#This was heavily appropriated for my purposes, use the video to see how to do the bouncing right

scoreboard players set %range noi.math 4
scoreboard players set %bounce noi.math 1
summon area_effect_cloud ~ ~ ~ {Tags:["noi.bounce"]}
tp @e[type=area_effect_cloud,tag=noi.bounce] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=noi.bounce] run function noi:math/raycast/loop

#if the ball ran into an entity
execute if score %range noi.math matches 0 store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute if score %range noi.math matches 0 store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute if score %range noi.math matches 0 run function noi:math/raycast/zplane

kill @e[type=area_effect_cloud,tag=noi.bounce]