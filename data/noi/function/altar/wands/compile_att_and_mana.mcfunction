summon armor_stand ~ ~ ~ {Tags:["current_stand"]}
data modify entity @e[tag=current_stand,limit=1] HandItems[0] set from entity @s item
$execute as @e[tag=current_stand,limit=1] run function noi:altar/wands/compile_att_and_mana_2 {path:$(path)}

kill @e[tag=current_stand]