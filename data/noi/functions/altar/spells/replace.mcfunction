#This is basically a combination of insert and then remove, but it summons an item entity instead of putting it in your hand.
summon item ~ ~1 ~ {Tags:["current2"],Item:{id:"minecraft:ice",Count:1b},Motion:[0.0,0.3,0.0]}
data modify entity @e[tag=current2,limit=1] Item set from entity @e[type=item_display,distance=...0001,tag=noi.spellholder_display,limit=1] item
tag @e[tag=current2] remove current2

tag @e[type=item_display,distance=...0001,tag=noi.spellholder_display,limit=1] add current2
data modify entity @e[tag=current2,limit=1] item set from entity @s SelectedItem
data modify entity @e[tag=current2,limit=1] item.Count set value 1b
item modify entity @s weapon.mainhand noi:remove_one

tag @e[tag=current] add done