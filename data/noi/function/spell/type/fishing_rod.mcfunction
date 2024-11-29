execute positioned ~ ~ ~ summon marker run tag @s add current
scoreboard players set $strength player_motion.api.launch 15000
tag @s add noi.dont_launch_meh
execute as @a[tag=!noi.dont_launch_meh,distance=..8] at @e[tag=current] facing entity @s eyes facing ^ ^ ^-1 run function player_motion:api/launch_looking
execute as @e[tag=!noi.dont_launch_meh,distance=0.001..8,tag=!current,type=!marker,type=!interaction,type=!item_display,type=!painting,type=!item_frame,type=!glow_item_frame,type=!player] unless score @s noi.cooldown matches 1.. at @e[tag=current] facing entity @s eyes facing ^ ^ ^-1 run function noi:spell/extra/launch_facing {strength:"1.5"}
execute as @e[tag=!noi.dont_launch_meh,distance=0.001..8,tag=!current,type=arrow] run scoreboard players set @s noi.cooldown 2

tag @e[tag=noi.dont_launch_meh] remove noi.dont_launch_meh
kill @e[tag=current]

$function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}

playsound minecraft:entity.fishing_bobber.retrieve player @a[distance=..8] ~ ~ ~