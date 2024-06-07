data modify entity @s item.Count set value 1b

execute store result score #wandsize noi.math run data get entity @s item.components.minecraft:custom_data.SpellSlotsCount 1
execute if score #wandsize noi.math matches 1.. positioned ~-.5 ~ ~-1.5 run function noi:altar/wands/other_displays/1 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 2.. positioned ~-.5 ~ ~-2.5 run function noi:altar/wands/other_displays/2 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 3.. positioned ~-.5 ~ ~-3.5 run function noi:altar/wands/other_displays/3 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 4.. positioned ~-.5 ~ ~-4.5 run function noi:altar/wands/other_displays/4 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 5.. positioned ~-.5 ~ ~-5.5 run function noi:altar/wands/other_displays/5 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 6.. positioned ~-.5 ~ ~-6.5 run function noi:altar/wands/other_displays/6 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 7.. positioned ~-.5 ~ ~-7.5 run function noi:altar/wands/other_displays/7 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 8.. positioned ~-.5 ~ ~-8.5 run function noi:altar/wands/other_displays/8 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 9.. positioned ~-.5 ~ ~-9.5 run function noi:altar/wands/other_displays/9 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 10.. positioned ~-.5 ~ ~-10.5 run function noi:altar/wands/other_displays/10 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 11.. positioned ~-.5 ~ ~-11.5 run function noi:altar/wands/other_displays/11 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 12.. positioned ~-.5 ~ ~-12.5 run function noi:altar/wands/other_displays/12 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 13.. positioned ~-.5 ~ ~-13.5 run function noi:altar/wands/other_displays/13 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 14.. positioned ~-.5 ~ ~-14.5 run function noi:altar/wands/other_displays/14 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 15.. positioned ~-.5 ~ ~-15.5 run function noi:altar/wands/other_displays/15 with entity @s item.components.minecraft:custom_data.Inv
execute if score #wandsize noi.math matches 16.. positioned ~-.5 ~ ~-16.5 run function noi:altar/wands/other_displays/16 with entity @s item.components.minecraft:custom_data.Inv
