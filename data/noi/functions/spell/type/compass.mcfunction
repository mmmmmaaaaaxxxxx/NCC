execute if entity @s[type=player] positioned ~ ~-1.5 ~ as @e[limit=1,sort=nearest,distance=.0001..4,type=!block_display,type=!marker,type=!interaction,type=!armor_stand,type=!boat,type=!minecart,type=!chest_boat,type=!chest_minecart,type=!item_display,type=!painting,type=!item_frame,type=!glow_item_frame] run tag @s add current
execute unless entity @s[type=player] as @e[limit=1,sort=nearest,distance=.0001..4,type=!block_display,type=!marker,type=!interaction,type=!armor_stand,type=!boat,type=!minecart,type=!chest_boat,type=!chest_minecart,type=!item_display,type=!painting,type=!item_frame,type=!glow_item_frame] run tag @s add current

execute if entity @e[tag=current] facing entity @e[tag=current,limit=1] feet positioned ^ ^ ^.3 run function noi:spell/extra/compass_line

$execute as @e[tag=current] at @s rotated as @s run function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}

tag @e[tag=current] remove current