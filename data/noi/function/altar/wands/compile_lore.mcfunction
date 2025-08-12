data modify storage temp:local wand_lore set value []
data modify storage temp:local wand_lore append value {"italic":false,"color":"#9696FF","text":"Spell:"}
execute as @e[type=item_display,distance=...0001,tag=noi.spellholder_display,limit=1] run function noi:altar/wands/spell_lore with entity @s item.components.minecraft:custom_data.Spell
data modify storage temp:local wand_lore append value {"text":""}
function noi:altar/wands/lore_base_mana with entity @e[type=item_display,distance=...0001,tag=noi.spellholder_display,limit=1] item.components."minecraft:custom_data"
function noi:altar/wands/lore_cost with entity @e[type=item_display,distance=...0001,tag=noi.spellholder_display,limit=1] item.components."minecraft:custom_data".Spell
