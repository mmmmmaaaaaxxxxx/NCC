execute if entity @s[scores={noi.lifetime=0},tag=!noi.custom_trigger] at @s run function noi:spell/extra/const_direction_trigger
execute if entity @s[scores={noi.lifetime=0},tag=noi.spelldelay.filled_map] at @s run function noi:spell/extra/filled_map_trigger
execute if entity @s[scores={noi.lifetime=0},tag=noi.spelldelay.map] at @s run function noi:spell/extra/map_trigger

execute if entity @s[tag=noi.spelldelay.activator_rail] run return run particle minecraft:item{item:"activator_rail"} ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=noi.spelldelay.clock] run return run particle minecraft:item{item:"clock"} ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=noi.spelldelay.echo_shard] run return run particle minecraft:shriek{delay:1} ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=noi.spelldelay.redstone_block] run return run particle minecraft:item{item:"redstone_block"} ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=noi.spelldelay.redstone] run return run particle minecraft:dust{color:[0.698,0.078,0.078],scale:1} ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=noi.spelldelay.repeater] run return run particle minecraft:item{item:"repeater"} ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=noi.spelldelay.note_block] run return run particle note ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=noi.spelldelay.filled_map] run return run particle dust{color:[0.878,0.800,0.678],scale:1} ~ ~ ~ 0 0 0 1 0 force
execute if entity @s[tag=noi.spelldelay.map] run return run particle dust{color:[0.878,0.800,0.678],scale:1} ~ ~ ~ 0 0 0 1 0 force

#custom projectiles with limited lifespans are technically spell delays
execute if entity @s[tag=noi.stained_glass_ball] run function noi:spell/extra/stained_glass_ball