advancement revoke @s only noi:craft_wand_stone

tag @s add current3

clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{noi.crafted_wand:1b}]
function noi:wand/craft/give {size:2,base_cost:8}

tag @s remove current3