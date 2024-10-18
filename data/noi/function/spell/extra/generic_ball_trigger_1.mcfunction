tag @s add current

execute store result score @s noi.x1 run data get entity @s Pos[0]
execute store result score @s noi.y1 run data get entity @s Pos[1]
execute store result score @s noi.z1 run data get entity @s Pos[2]

$tp @s ~ ~ ~ facing ~$(Motion0) ~$(Motion1) ~$(Motion2)

$execute facing ~$(Motion0) ~$(Motion1) ~$(Motion2) positioned ~ ~ ~ run function noi:math/raycast/begin

tag @s remove current
execute positioned ~ ~-.25 ~ rotated as @s run function noi:spell/init with entity @s data

kill