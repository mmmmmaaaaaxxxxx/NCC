advancement revoke @s only noi:craft_wand_gold

tag @s add current3

clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{noi.crafted_wand:1b}]
function noi:wand/craft/give {size:6,base_cost:6}

tag @s remove current3