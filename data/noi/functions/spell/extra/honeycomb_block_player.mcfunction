execute store result score $x delta.api.launch run data get entity @s Motion[2] 10000
execute store result score $y delta.api.launch run data get entity @s Motion[0] 10000
execute store result score $z delta.api.launch run data get entity @s Motion[1] 10000
tp @s @s
function delta:api/launch_xyz