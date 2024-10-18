advancement revoke @s only noi:drink_mana_potion

scoreboard players add @s noi.raw_mana 50
execute store result score #condition noi.math if score @s noi.raw_mana matches 251..
execute if score #condition noi.math matches 1 if score @s noi.raw_mana matches ..300 run scoreboard players set @s noi.raw_mana 250
execute if score #condition noi.math matches 1 if score @s noi.raw_mana matches 301.. run scoreboard players remove @s noi.raw_mana 50