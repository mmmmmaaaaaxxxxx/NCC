$summon item_display ~ ~ ~ {Tags:["current","noi.thrown_tool"],teleport_duration:1,transformation:{left_rotation:[1f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.4f,.4f,.4f]},item:{id:"minecraft:$(1)",Count:1b}}
$summon marker ~ ~ ~ {Tags:["noi.const_direction","current2"],data:{UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}}
execute as @e[tag=current2] run tp @s ~ ~ ~ facing ^ ^ ^1
$tag @e[tag=current2] add noi.tooltype.$(1att)
$tag @e[tag=current2] add noi.tool.$(1)
ride @e[tag=current2,limit=1] mount @e[tag=current,limit=1]
execute as @e[tag=current2] run function noi:spell/extra/thrown_tool_init

tag @e[tag=current] remove current
tag @e[tag=current2] remove current2
