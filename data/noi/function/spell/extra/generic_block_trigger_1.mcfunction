execute store result entity @s data.Motion0 double .0001 run data get entity @s data.Motion[0] 10000
execute store result entity @s data.Motion1 double -.0001 run data get entity @s data.Motion[1] 10000
execute store result entity @s data.Motion2 double .0001 run data get entity @s data.Motion[2] 10000

execute if entity @s[tag=noi.bounce_backwards] store result entity @s data.Motion0 double -.0001 run data get entity @s data.Motion0 10000
#execute store result entity @s data.Motion1 double -.0001 run data get entity @s data.Motion1 10000
execute if entity @s[tag=noi.bounce_backwards] store result entity @s data.Motion2 double -.0001 run data get entity @s data.Motion2 10000

function noi:spell/extra/generic_block_trigger_2 with entity @s data