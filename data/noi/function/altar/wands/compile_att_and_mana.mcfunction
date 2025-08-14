summon armor_stand ~ ~ ~ {Tags:["current_stand"]}
item replace entity @e[tag=current_stand,limit=1] weapon.mainhand from entity @s contents
$execute as @e[tag=current_stand,limit=1] run function noi:altar/wands/compile_att_and_mana_2 {path:$(path)}

kill @e[tag=current_stand]