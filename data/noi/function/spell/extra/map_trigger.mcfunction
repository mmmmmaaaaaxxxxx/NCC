tag @s add current
execute as @e[limit=1,sort=nearest,distance=..5.5,tag=!noi.nowand,type=!block_display,type=!marker,type=!interaction,type=!armor_stand,type=!#boat,type=!minecart,type=!#noi:chest_boat,type=!chest_minecart,type=!item_display,type=!painting,type=!item_frame,type=!glow_item_frame] at @s run function noi:spell/init with entity @e[type=marker,tag=current,limit=1] data
playsound item.book.page_turn

kill