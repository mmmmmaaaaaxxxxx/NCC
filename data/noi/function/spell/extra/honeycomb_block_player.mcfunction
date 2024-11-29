execute store result score $x player_motion.api.launch run data get entity @s Motion[2] 10000
execute store result score $y player_motion.api.launch run data get entity @s Motion[0] 10000
execute store result score $z player_motion.api.launch run data get entity @s Motion[1] 10000
tp @s @s
function player_motion:api/launch_xyz