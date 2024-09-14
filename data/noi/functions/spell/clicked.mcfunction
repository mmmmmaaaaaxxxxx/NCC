execute if score .allow_placing_wand_editors noi.settings matches 1 if predicate noi:sneaking run return run function noi:altar/place_temporary

#polished basalt the reason for lines 5 and 11, wands can cast multiple times from 1 click otherwise
execute store result score #has_offhand_wand noi.math if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{noi.wand:1b,noi.wand_format:2}}}]}]
#there is still a bug if you hold a wand in your offhand and then click with a polished basalt wand in your mainhand where it runs the mainhand wand twice, but that is an acceptibly small bug

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{noi.wand:1b,noi.wand_format:2}}}}] at @s positioned ~ ~1.5 ~ run function noi:spell/cast with entity @s SelectedItem.components."minecraft:custom_data".Spell
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{noi.wand:1b}}}}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{noi.wand_format:2}}}}] run tellraw @s {"text":"This wand is out of date! Please recompile it to update it to the most recent version!","color":"red"}

execute if score #has_offhand_wand noi.math matches 0 run return 0
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{noi.wand:1b,noi.wand_format:2}}}]}] at @s positioned ~ ~1.5 ~ run function noi:spell/cast with entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".Spell
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{noi.wand:1b}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{noi.wand_format:2}}}]}] run tellraw @s {"text":"The wand in your offhand is out of date! Please recompile it to update it to the most recent version!","color":"red"}
