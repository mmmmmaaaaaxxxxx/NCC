execute if entity @s[tag=noi.ball_mod] run kill
execute if entity @s[tag=noi.dripstone_drill] at @s run function noi:spell/extra/dripstone_trigger with entity @s data
execute if entity @s[tag=noi.thrown_block] at @s run function noi:spell/extra/generic_block_trigger_1
execute if entity @s[tag=noi.thrown_ball] at @s run function noi:spell/extra/generic_ball_trigger_0
execute if entity @s[tag=noi.const_direction] at @s run function noi:spell/extra/const_direction_trigger
execute if entity @s[tag=noi.potion] at @s run function noi:spell/extra/brewing_stand_trigger with entity @s data

tag @s add noi.scanned