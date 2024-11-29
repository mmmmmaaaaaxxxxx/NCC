playsound block.piston.contract player @a[distance=..10] ~ ~ ~

tag @s add noi.ignore
execute positioned ^ ^ ^2 run tag @e[tag=!current,type=!marker,type=!interaction,type=!item_display,type=!painting,type=!item_frame,type=!glow_item_frame,tag=!noi.ignore,distance=..3] add current
execute positioned ^ ^ ^3 run tag @e[tag=!current,type=!marker,type=!interaction,type=!item_display,type=!painting,type=!item_frame,type=!glow_item_frame,tag=!noi.ignore,distance=..3] add current
execute positioned ^ ^ ^4 run tag @e[tag=!current,type=!marker,type=!interaction,type=!item_display,type=!painting,type=!item_frame,type=!glow_item_frame,tag=!noi.ignore,distance=..3] add current

scoreboard players set $strength player_motion.api.launch 18000
execute as @a[tag=current] facing ^ ^ ^-1 run function player_motion:api/launch_looking
execute as @e[type=!player,tag=current] unless score @s noi.cooldown matches 1.. facing ^ ^ ^-1 run function noi:spell/extra/launch_facing {strength:"1.8"}
#this stops arrows from being boosted many times and dealing ludicrous damage
execute as @e[type=#minecraft:arrows,tag=current] run scoreboard players set @s noi.cooldown 2

tag @s remove noi.ignore

$function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}
