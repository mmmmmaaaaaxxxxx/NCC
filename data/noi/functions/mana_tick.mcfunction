execute as @a if score @s noi.mana < @s noi.max_mana run scoreboard players add @s noi.mana 1
scoreboard players add @a noi.ticks_without_spell 1

scoreboard players set #timer noi.math 0