#run as the wandholder interaction that gets clicked on
tag @s add current

execute if entity @s[tag=!noi.mirrored,tag=noi.empty,tag=!done,tag=!noi.locked] on target if items entity @s weapon.mainhand *[custom_data~{noi.wand:1b}] run function noi:altar/wands/insert
execute if entity @s[tag=!noi.mirrored,tag=!noi.empty,tag=!done,tag=!noi.locked] on target if items entity @s weapon.mainhand *[custom_data~{noi.wand:1b}] run function noi:altar/wands/replace
execute if entity @s[tag=!noi.mirrored,tag=!noi.empty,tag=!done,tag=!noi.locked] on target if entity @s[nbt=!{SelectedItem:{}}] run function noi:altar/wands/remove

execute if entity @s[tag=noi.mirrored,tag=noi.empty,tag=!done,tag=!noi.locked] on target if items entity @s weapon.mainhand *[custom_data~{noi.wand:1b}] positioned ^-1 ^ ^ run function noi:altar/wands/insert
execute if entity @s[tag=noi.mirrored,tag=!noi.empty,tag=!done,tag=!noi.locked] on target if items entity @s weapon.mainhand *[custom_data~{noi.wand:1b}] positioned ^-1 ^ ^ run function noi:altar/wands/replace
execute if entity @s[tag=noi.mirrored,tag=!noi.empty,tag=!done,tag=!noi.locked] on target if entity @s[nbt=!{SelectedItem:{}}] positioned ^-1 ^ ^ run function noi:altar/wands/remove


data remove entity @s interaction

tag @e[tag=done] remove done
tag @s remove current
tag @e[tag=current2] remove current2
