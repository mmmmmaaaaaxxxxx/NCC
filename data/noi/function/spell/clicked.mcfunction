execute if score .allow_placing_wand_editors noi.settings matches 1 if predicate noi:sneaking run return run function noi:altar/place_temporary

#polished basalt is the reason for lines 5 and 11, wands can cast multiple times from 1 click otherwise
execute store result score #has_offhand_wand noi.math if items entity @s weapon.offhand *[custom_data~{noi.wand:1b}]
#there is still a bug if you hold a wand in your offhand and then click with a polished basalt wand in your mainhand where it runs the mainhand wand twice, but that is an acceptibly small bug

execute if items entity @s weapon.mainhand *[custom_data~{noi.wand:1b,noi.wand_format:3}] at @s anchored eyes positioned ^ ^ ^ run function noi:spell/cast with entity @s SelectedItem.components."minecraft:custom_data".Spell
execute if items entity @s weapon.mainhand *[custom_data~{noi.wand:1b}] unless items entity @s weapon.mainhand *[custom_data~{noi.wand:1b,noi.wand_format:3}] run tellraw @s {"text":"This wand is out of date! Please recompile it to update it to the most recent version!","color":"red"}

execute if score #has_offhand_wand noi.math matches 0 run return 0

execute if items entity @s weapon.offhand *[custom_data~{noi.wand:1b,noi.wand_format:3}] at @s anchored eyes positioned ^ ^ ^ run function noi:spell/cast with entity @s equipment.offhand.components."minecraft:custom_data".Spell
execute if items entity @s weapon.offhand *[custom_data~{noi.wand:1b}] unless items entity @s weapon.offhand *[custom_data~{noi.wand_format:3}] run tellraw @s {"text":"The wand in your offhand is out of date! Please recompile it to update it to the most recent version!","color":"red"}
