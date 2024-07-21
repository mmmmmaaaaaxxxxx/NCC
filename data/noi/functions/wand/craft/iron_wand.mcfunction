advancement revoke @s only noi:craft_wand_iron

tag @s add current3

clear @s minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{noi.crafted_wand:1b}]
function noi:wand/craft/give {size:4,base_cost:7}

tag @s remove current3