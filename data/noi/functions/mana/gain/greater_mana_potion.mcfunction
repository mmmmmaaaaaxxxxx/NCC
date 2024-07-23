advancement revoke @s only noi:drink_greater_mana_potion

scoreboard players add @s noi.raw_mana 100
execute store result score #condition noi.math if score @s noi.raw_mana matches 301..
execute if score #condition noi.math matches 1 if score @s noi.raw_mana matches ..400 run scoreboard players set @s noi.raw_mana 300
execute if score #condition noi.math matches 1 if score @s noi.raw_mana matches 401.. run scoreboard players remove @s noi.raw_mana 100