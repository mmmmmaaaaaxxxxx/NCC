execute if score .mana_regen noi.settings matches 2 as @a if score @s noi.mana < @s noi.max_mana run scoreboard players add @s noi.mana 1
execute if score .mana_regen noi.settings matches 1.. as @a if score @s noi.mana < @s noi.max_mana if score @s noi.raw_mana matches 1.. run function noi:mana/metabolize

scoreboard players add @a noi.ticks_without_spell 1

scoreboard players set #timer noi.math 0