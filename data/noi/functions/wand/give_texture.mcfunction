execute store result score #random noi.math run random value 1..5
execute if score .limit_default_wand_textures noi.settings matches 1 run scoreboard players set #random noi.math 3

execute if score #random noi.math matches 1 store result score #random2 noi.math run random value 0..3
execute if score #random noi.math matches 1 if score #random2 noi.math matches 0 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150100
execute if score #random noi.math matches 1 if score #random2 noi.math matches 1 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150101
execute if score #random noi.math matches 1 if score #random2 noi.math matches 2 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150102
execute if score #random noi.math matches 1 if score #random2 noi.math matches 3 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150103

execute if score #random noi.math matches 2 store result score #random2 noi.math run random value 0..1
execute if score #random noi.math matches 2 if score #random2 noi.math matches 0 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150200
execute if score #random noi.math matches 2 if score #random2 noi.math matches 1 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150201

execute if score #random noi.math matches 3..4 store result score #random2 noi.math run random value 0..9
execute if score #random noi.math matches 3..4 if score #random2 noi.math matches 0 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150300
execute if score #random noi.math matches 3..4 if score #random2 noi.math matches 1 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150301
execute if score #random noi.math matches 3..4 if score #random2 noi.math matches 2 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150302
execute if score #random noi.math matches 3..4 if score #random2 noi.math matches 3 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150303
execute if score #random noi.math matches 3..4 if score #random2 noi.math matches 4 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150304
execute if score #random noi.math matches 3..4 if score #random2 noi.math matches 5 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150305
execute if score #random noi.math matches 3..4 if score #random2 noi.math matches 6 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150306
execute if score #random noi.math matches 3..4 if score #random2 noi.math matches 7 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150307
execute if score #random noi.math matches 3..4 if score #random2 noi.math matches 8 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150308
execute if score #random noi.math matches 3..4 if score #random2 noi.math matches 9 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150309

execute if score #random noi.math matches 5 store result score #random2 noi.math run random value 0..1
execute if score #random noi.math matches 5 if score #random2 noi.math matches 0 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150400
execute if score #random noi.math matches 5 if score #random2 noi.math matches 1 run data modify entity @e[tag=current2,limit=1] Item.components.minecraft:custom_model_data set value 14150401
