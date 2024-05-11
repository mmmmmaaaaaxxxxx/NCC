$execute positioned 0.0 0.0 0.0 positioned ^ ^ ^$(strength) summon marker run tag @s add noi.position
data modify storage temp:local Motion set from entity @e[tag=noi.position,limit=1] Pos
kill @e[tag=noi.position]
execute store result score dx noi.math run data get storage temp:local Motion[0] 10000
execute store result score dy noi.math run data get storage temp:local Motion[1] 10000
execute store result score dz noi.math run data get storage temp:local Motion[2] 10000
data modify storage temp:local Motion set from entity @s Motion
execute store result score x noi.math run data get storage temp:local Motion[0] 10000
execute store result score y noi.math run data get storage temp:local Motion[1] 10000
execute store result score z noi.math run data get storage temp:local Motion[2] 10000

scoreboard players operation x noi.math += dx noi.math
scoreboard players operation y noi.math += dy noi.math
scoreboard players operation z noi.math += dz noi.math

execute store result entity @s Motion[0] double .0001 run scoreboard players get x noi.math
execute store result entity @s Motion[1] double .0001 run scoreboard players get y noi.math
execute store result entity @s Motion[2] double .0001 run scoreboard players get z noi.math
