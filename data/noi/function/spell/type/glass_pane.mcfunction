tag @e[tag=current,distance=..15] remove current
#gives current, but if the laser gives current to another entity, takes it back
tag @s add current
tag @s add noi.laser_ignore
scoreboard players set i noi.math 0
function noi:spell/extra/glass_pane_laser
execute if entity @e[tag=current,tag=!noi.laser_ignore,distance=..15] run tag @s remove current
tag @s remove noi.laser_ignore
tag @e remove noi.target
$execute as @e[tag=current,limit=1,sort=furthest,distance=..15] at @s run function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}
