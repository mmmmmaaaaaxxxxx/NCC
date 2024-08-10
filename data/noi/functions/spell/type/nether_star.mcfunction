#this acts like a fire charge but it combines all consecutive nether stars into one fireball with power equal to the number of stars - 1

#count the number of consecutive nether stars and set the power from that
$data modify storage temp:local iterationlist set value [{$(2):1},{$(3):1},{$(4):1},{$(5):1},{$(6):1},{$(7):1},{$(8):1},{$(9):1},{$(10):1},{$(11):1},{$(12):1},{$(13):1},{$(14):1},{$(15):1},{$(16):1}]
$data modify storage temp:local spelllist set value [$(2),$(3),$(4),$(5),$(6),$(7),$(8),$(9),$(10),$(11),$(12),$(13),$(14),$(15),$(16)]
$data modify storage temp:local attlist set value [$(2att),$(3att),$(4att),$(5att),$(6att),$(7att),$(8att),$(9att),$(10att),$(11att),$(12att),$(13att),$(14att),$(15att),$(16att)]

scoreboard players set i noi.math 0
function noi:spell/extra/nether_star_loop_count
execute store result storage temp:local macro.Power byte 1 run scoreboard players get i noi.math

#Insert the new spell that doesnt contain all of the merged nether stars
$data modify storage temp:local data merge value {UUID:$(UUID),1:"null",2:"null",3:"null",4:"null",5:"null",6:"null",7:"null",8:"null",9:"null",10:"null",11:"null",12:"null",13:"null",14:"null",15:"null",16:"null",1att:"null",2att:"null",3att:"null",4att:"null",5att:"null",6att:"null",7att:"null",8att:"null",9att:"null",10att:"null",11att:"null",12att:"null",13att:"null",14att:"null",15att:"null",16att:"null"}
execute store result storage temp:local it int 1 run scoreboard players set i noi.math 0

execute if data storage temp:local spelllist[0] run function noi:spell/extra/nether_star_loop_remove with storage temp:local

#summon the fireball
function noi:math/block_launch {speed: 0}
function noi:spell/extra/fireball_summon with storage temp:local macro

$summon marker ~ ~ ~ {Tags:["noi.const_direction","current2"],data:{UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}}
execute as @e[tag=current2] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=current2] run data modify entity @s data set from storage temp:local data

ride @e[tag=current2,limit=1] mount @e[tag=current,limit=1]

tag @e[tag=current2] remove current2