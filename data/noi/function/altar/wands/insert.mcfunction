execute if entity @e[tag=current,tag=!noi.mirrored] run summon item_display ~ ~ ~ {teleport_duration:2,billboard:"fixed",Tags:["noi.spellholder_display","current2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[.7f,.7f,.7f]}}
execute if entity @e[tag=current,tag=noi.mirrored] run summon item_display ^1 ^ ^ {teleport_duration:2,billboard:"fixed",Tags:["noi.spellholder_display","current2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[.7f,.7f,.7f]}}
data modify entity @e[tag=current2,limit=1] item set from entity @s SelectedItem
execute as @e[tag=current2] run function noi:altar/wands/displays
item modify entity @s weapon.mainhand noi:remove_one
tag @e[tag=current] remove noi.empty
tag @e[tag=current] add done
