execute if entity @s[scores={noi.lifetime=0}] at @s run function noi:spell/extra/const_direction_trigger

execute if entity @s[tag=noi.spelldelay.activator_rail] run particle minecraft:item{item:"activator_rail"} ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=noi.spelldelay.clock] run particle minecraft:item{item:"clock"} ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=noi.spelldelay.echo_shard] run particle minecraft:shriek{delay:1} ~ ~ ~ 0 0 0 0 1 normal
execute if entity @s[tag=noi.spelldelay.redstone_block] run particle minecraft:item{item:"redstone_block"} ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=noi.spelldelay.redstone] run particle minecraft:dust{color:[0.698,0.078,0.078],scale:1} ~ ~ ~ 0 0 0 1 1
execute if entity @s[tag=noi.spelldelay.repeater] run particle minecraft:item{item:"repeater"} ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=noi.spelldelay.note_block] run particle note ~ ~ ~ 0 0 0 1 1