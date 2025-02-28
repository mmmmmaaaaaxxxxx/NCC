data modify storage temp:local att set value "null"
execute if entity @s[predicate=noi:generic_block] run data modify storage temp:local att set value "generic_block"
execute if entity @s[predicate=noi:generic_ball] run data modify storage temp:local att set value "generic_ball"
execute if entity @s[predicate=noi:generic_disc] run data modify storage temp:local att set value "generic_disc"
execute if entity @s[predicate=noi:generic_wool] run data modify storage temp:local att set value "generic_wool"
execute if entity @s[predicate=noi:generic_dye] run data modify storage temp:local att set value "generic_dye"
execute if entity @s[predicate=noi:generic_glass] run data modify storage temp:local att set value "generic_glass"
execute if entity @s[predicate=noi:generic_glass_pane] run data modify storage temp:local att set value "generic_glass_pane"
execute if entity @s[predicate=noi:generic_sword] run data modify storage temp:local att set value "generic_sword"
execute if entity @s[predicate=noi:generic_shovel] run data modify storage temp:local att set value "generic_shovel"
execute if entity @s[predicate=noi:generic_pickaxe] run data modify storage temp:local att set value "generic_pickaxe"
execute if entity @s[predicate=noi:generic_axe] run data modify storage temp:local att set value "generic_axe"
execute if entity @s[predicate=noi:generic_hoe] run data modify storage temp:local att set value "generic_hoe"
execute if entity @s[predicate=noi:generic_slab] run data modify storage temp:local att set value "generic_slab"
execute if entity @s[predicate=noi:generic_wall] run data modify storage temp:local att set value "generic_wall"
execute if entity @s[predicate=noi:generic_stair] run data modify storage temp:local att set value "generic_stair"
$data modify storage temp:local spell.$(path)att set from storage temp:local att

#gonna redo this at some point so that I dont have to use the dumb mana cost item tags
scoreboard players set mana noi.math 0
#execute if entity @s[predicate=noi:2_mana_mult] run scoreboard players operation mana noi.math *= #2 noi.math
#execute if entity @s[predicate=noi:0_75_mana_mult] run scoreboard players operation mana noi.math *= #3 noi.math
#execute if entity @s[predicate=noi:0_75_mana_mult] run scoreboard players operation mana noi.math /= #4 noi.math
execute if entity @s[predicate=noi:1_mana_add] run scoreboard players add mana noi.math 100
execute if entity @s[predicate=noi:3_mana_add] run scoreboard players add mana noi.math 300
execute if entity @s[predicate=noi:5_mana_add] run scoreboard players add mana noi.math 500
execute if entity @s[predicate=noi:10_mana_add] run scoreboard players add mana noi.math 1000
execute if entity @s[predicate=noi:20_mana_add] run scoreboard players add mana noi.math 2000
execute if entity @s[predicate=noi:115_mana_add] run scoreboard players add mana noi.math 11500

$execute store result storage temp:local manaspell.$(path)mana int 1 run scoreboard players get mana noi.math
