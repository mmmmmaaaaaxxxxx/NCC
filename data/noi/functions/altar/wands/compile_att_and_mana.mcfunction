summon armor_stand ~ ~ ~ {HandItems:[{}],Tags:["current_stand"]}
data modify entity @e[tag=current_stand,limit=1] HandItems[0] set from entity @e[tag=noi.spellholder_display,distance=...0001,limit=1] item
$execute if entity @e[tag=current_stand,predicate=noi:generic_block,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_block"
$execute if entity @e[tag=current_stand,predicate=noi:generic_ball,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_ball"
$execute if entity @e[tag=current_stand,predicate=noi:ball_mod,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "ball_mod"
$execute if entity @e[tag=current_stand,predicate=noi:generic_disc,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_disc"
$execute if entity @e[tag=current_stand,predicate=noi:generic_wool,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_wool"
$execute if entity @e[tag=current_stand,predicate=noi:generic_dye,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_dye"
$execute if entity @e[tag=current_stand,predicate=noi:generic_glass,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_glass"
$execute if entity @e[tag=current_stand,predicate=noi:generic_glass_pane,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_glass_pane"
$execute if entity @e[tag=current_stand,predicate=noi:generic_sword,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_sword"
$execute if entity @e[tag=current_stand,predicate=noi:generic_shovel,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_shovel"
$execute if entity @e[tag=current_stand,predicate=noi:generic_pickaxe,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_pickaxe"
$execute if entity @e[tag=current_stand,predicate=noi:generic_axe,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_axe"
$execute if entity @e[tag=current_stand,predicate=noi:generic_hoe,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_hoe"
$execute if entity @e[tag=current_stand,predicate=noi:generic_slab,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_slab"
$execute if entity @e[tag=current_stand,predicate=noi:generic_wall,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_wall"
$execute if entity @e[tag=current_stand,predicate=noi:generic_stair,distance=...0001] run data modify entity @s item.tag.Spell.$(path)att set value "generic_stair"

execute if entity @e[tag=current_stand,predicate=noi:2_mana_mult,distance=...0001] run scoreboard players operation mana noi.math *= #2 noi.math
execute if entity @e[tag=current_stand,predicate=noi:0_75_mana_mult,distance=...0001] run scoreboard players operation mana noi.math *= #3 noi.math
execute if entity @e[tag=current_stand,predicate=noi:0_75_mana_mult,distance=...0001] run scoreboard players operation mana noi.math /= #4 noi.math
execute if entity @e[tag=current_stand,predicate=noi:1_mana_add,distance=...0001] run scoreboard players add mana noi.math 100
execute if entity @e[tag=current_stand,predicate=noi:3_mana_add,distance=...0001] run scoreboard players add mana noi.math 300
execute if entity @e[tag=current_stand,predicate=noi:5_mana_add,distance=...0001] run scoreboard players add mana noi.math 500
execute if entity @e[tag=current_stand,predicate=noi:10_mana_add,distance=...0001] run scoreboard players add mana noi.math 1000
execute if entity @e[tag=current_stand,predicate=noi:20_mana_add,distance=...0001] run scoreboard players add mana noi.math 2000
execute if entity @e[tag=current_stand,predicate=noi:115_mana_add,distance=...0001] run scoreboard players add mana noi.math 11500

kill @e[tag=current_stand]