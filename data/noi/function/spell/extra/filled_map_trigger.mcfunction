tag @s add current
execute as @a[distance=..5.5,gamemode=!spectator,tag=!noi.nowand] at @s run function noi:spell/init with entity @e[type=marker,tag=current,limit=1] data
playsound item.book.page_turn

kill