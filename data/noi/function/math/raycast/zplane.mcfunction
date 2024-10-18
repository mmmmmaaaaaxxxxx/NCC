### 180 - Rotation[0]
#This is what happens when we dont use quaternions instead of Euler angles

scoreboard players set #temp noi.math 18000
execute store result score #temp1 noi.math run data get entity @e[type=marker,tag=current,limit=1] Rotation[0] 100.0
execute store result entity @e[type=marker,tag=current,limit=1] Rotation[0] float 0.01 run scoreboard players operation #temp noi.math -= #temp1 noi.math
