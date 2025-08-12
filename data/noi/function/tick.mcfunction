#yo keep this one at the front
scoreboard players set @a[scores={noi.flint_count=1..}] noi.flint_count 0

execute unless score .global_max_mana noi.settings matches ..-1 run scoreboard players operation @a noi.max_mana = .global_max_mana noi.settings
scoreboard players add #timer noi.math 1
execute if score #timer noi.math >= .mana_tick_length noi.settings run function noi:mana/mana_tick

execute as @e[scores={noi.cooldown=1..}] run scoreboard players remove @s noi.cooldown 1
execute as @e[scores={noi.lifetime=1..}] run scoreboard players remove @s noi.lifetime 1
execute as @e[type=marker,tag=noi.spelldelay] at @s run function noi:spelldelay_tick

execute as @e[scores={noi.lifetime=..0}] run kill

execute as @a[scores={noi.clicked=1..},tag=!noi.nowand] at @s run function noi:spell/clicked
scoreboard players reset @a noi.clicked

title @a[scores={noi.stored_mana=0}] actionbar [{"text":"Mana: ","color":"#CC3ED6"},{"score":{"name":"*","objective":"noi.mana"},"color":"#CC3ED6"},{"text":"/","color":"#CC3ED6"},{"score":{"name":"*","objective":"noi.max_mana"},"color":"#CC3ED6"}]
title @a[scores={noi.stored_mana=1..}] actionbar [{"text":"Mana: ","color":"#CC3ED6"},{"score":{"name":"*","objective":"noi.mana"},"color":"#CC3ED6"},{"text":"/","color":"#CC3ED6"},{"score":{"name":"*","objective":"noi.max_mana"},"color":"#CC3ED6"},{"text":" (+","color":"#9E72A1"},{"score":{"name":"*","objective":"noi.stored_mana"},"color":"#9E72A1"},{"text":")","color":"#9E72A1"}]
title @a[scores={noi.stored_mana=0,noi.raw_mana=1..}] actionbar [{"text":"Mana: ","color":"#CC3ED6"},{"score":{"name":"*","objective":"noi.mana"},"color":"#CC3ED6"},{"text":"/","color":"#CC3ED6"},{"score":{"name":"*","objective":"noi.max_mana"},"color":"#CC3ED6"},{"text":" (+","color":"#D67428"},{"score":{"name":"*","objective":"noi.raw_mana"},"color":"#D67428"},{"text":")","color":"#D67428"}]
title @a[scores={noi.stored_mana=1..,noi.raw_mana=1..}] actionbar [{"text":"Mana: ","color":"#CC3ED6"},{"score":{"name":"*","objective":"noi.mana"},"color":"#CC3ED6"},{"text":"/","color":"#CC3ED6"},{"score":{"name":"*","objective":"noi.max_mana"},"color":"#CC3ED6"},{"text":" (+","color":"#9E72A1"},{"score":{"name":"*","objective":"noi.stored_mana"},"color":"#9E72A1"},{"text":")","color":"#9E72A1"},{"text":" (+","color":"#D67428"},{"score":{"name":"*","objective":"noi.raw_mana"},"color":"#D67428"},{"text":")","color":"#D67428"}]

execute as @e[type=marker,tag=noi.bouncy_object,predicate=noi:riding] at @s run function noi:spell/extra/get_vehicle_motion
execute as @e[type=marker,tag=noi.ball_mod,predicate=noi:riding] at @s run function noi:spell/extra/ball_mod with entity @s data
# Make this just check for a tag that all magic markers have
execute as @e[type=marker,predicate=!noi:riding,tag=!noi.scanned] run function noi:marker_trigger

#combine the next two lines into one @e selector
execute as @e[type=interaction,nbt={interaction:{}},tag=noi.wandholder] at @s run function noi:altar/wands/main
execute as @e[type=interaction,nbt={interaction:{}},tag=noi.spellholder] at @s run function noi:altar/spells/main
execute as @e[type=minecraft:item_display,tag=noi.spellholder_display] at @s run tp @s ~ ~ ~ ~-2.2 ~

execute at @e[type=interaction,tag=noi.wandholder,tag=noi.empty] positioned ~ ~2 ~ run particle enchant ~ ~ ~ 0 0 0 .5 1
execute at @e[type=interaction,tag=noi.spellholder,tag=noi.empty,tag=!noi.locked] positioned ~ ~1 ~ run particle enchanted_hit

execute as @e[type=item_display,tag=noi.thrown_tool] at @s on passengers run function noi:spell/extra/thrown_tool with entity @s data

execute as @e[type=item_display,tag=noi.thrown_iron_nugget] at @s run function noi:spell/extra/iron_nugget_tick

clear @a minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{noi.crafted_wand:1b}]