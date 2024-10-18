execute if entity @e[tag=current,tag=noi.mirrored] positioned ^1 ^ ^ run tp @e[type=item_display,distance=...0001,tag=noi.spellholder_display,limit=1] ^-1 ^ ^

execute as @e[type=item_display,distance=...0001,tag=noi.spellholder_display,limit=1] run function noi:altar/wands/compile_spell
function noi:altar/wands/compile_lore
data modify entity @e[type=item_display,distance=...0001,tag=noi.spellholder_display,limit=1] item.components.minecraft:lore set from storage temp:local wand_lore
item replace entity @s weapon.mainhand from entity @e[type=item_display,distance=...0001,tag=noi.spellholder_display,limit=1] container.0
kill @e[type=item_display,distance=...0001,tag=noi.spellholder_display]

tag @e[tag=current] add noi.empty
tag @e[tag=current] add done

execute positioned ^.5 ^ ^1.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^2.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^3.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^4.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^5.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^6.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^7.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^8.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^9.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^10.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^11.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^12.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^13.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^14.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^15.5 run function noi:altar/wands/remove_displays
execute positioned ^.5 ^ ^16.5 run function noi:altar/wands/remove_displays

execute as @e[tag=current] if entity @s[tag=noi.temporary_wandholder] run kill