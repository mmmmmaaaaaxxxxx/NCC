execute if entity @s[type=!player] store result entity @s Motion[0] double 1 run data get entity @s Motion[0] -1000
execute if entity @s[type=!player] store result entity @s Motion[1] double 1 run data get entity @s Motion[1] -1000
execute if entity @s[type=!player] store result entity @s Motion[2] double 1 run data get entity @s Motion[2] -1000


execute if entity @s[type=player] store result score $x player_motion.api.launch run data get entity @s Motion[0] -15000
execute if entity @s[type=player] store result score $y player_motion.api.launch run data get entity @s Motion[1] -8000
execute if entity @s[type=player] store result score $z player_motion.api.launch run data get entity @s Motion[2] -15000

execute if entity @s[type=player] run tp @s @s
execute if entity @s[type=player] at @s run function player_motion:api/launch_xyz

$function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}

playsound minecraft:entity.ender_dragon.flap player @a[distance=..4] ~ ~ ~