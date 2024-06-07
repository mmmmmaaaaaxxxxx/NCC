execute if predicate noi:sneaking positioned ~ ~ ~ run function noi:altar/place_temporary
execute if score .allow_placing_wand_editors noi.settings matches 1 if predicate noi:sneaking run return 0

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{noi.wand:1b,noi.wand_format:2}}}}] at @s positioned ~ ~1.5 ~ run function noi:spell/cast with entity @s SelectedItem.components."minecraft:custom_data".Spell
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{noi.wand:1b}}}}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{noi.wand_format:2}}}}] run tellraw @s {"text":"This wand is out of date! Please recompile it to update it to the most recent version!","color":"red"}

execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{noi.wand:1b,noi.wand_format:2}}}]}] at @s positioned ~ ~1.5 ~ run function noi:spell/cast with entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".Spell
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{noi.wand:1b}}}]}] unless entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{noi.wand_format:2}}}]}] run tellraw @s {"text":"The wand in your offhand is out of date! Please recompile it to update it to the most recent version!","color":"red"}
