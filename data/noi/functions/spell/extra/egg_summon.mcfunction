$summon egg ~ ~ ~ {Motion:$(Motion),Item:{id:"minecraft:$(1)",Count:1b},Tags:["current2"],Passengers:[{id:"minecraft:marker",Tags:["noi.thrown_ball","noi.bouncy_object","current"],data:{UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}}]}
execute as @e[tag=current] run function noi:spell/extra/get_vehicle_motion
tag @e[tag=current] remove current

$execute if data storage noi:att $(2att).ball_mod run summon marker ~ ~ ~ {Tags:["noi.ball_mod","current"],data:{Spell:"$(2)",UUID:$(UUID),Item:$(2)}}
$execute if data storage noi:att $(2att).generic_dye run summon marker ~ ~ ~ {Tags:["noi.ball_mod","current"],data:{Spell:"generic_dye",UUID:$(UUID),Item:$(2)}}
#extremely janky way of making generic dyes work as ball mods ^
ride @e[tag=current,limit=1] mount @e[tag=current2,limit=1]

tag @e[tag=current] remove current
tag @e[tag=current2] remove current2
