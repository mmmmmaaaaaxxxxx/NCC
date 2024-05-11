$function noi:spell/init {UUID:$(UUID),1:$(2),2:"null",3:"null",4:"null",5:"null",6:"null",7:"null",8:"null",9:"null",10:"null",11:"null",12:"null",13:"null",14:"null",15:"null",16:"null",1att:$(2att),2att:"null",3att:"null",4att:"null",5att:"null",6att:"null",7att:"null",8att:"null",9att:"null",10att:"null",11att:"null",12att:"null",13att:"null",14att:"null",15att:"null",16att:"null"}

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["current"]}
scoreboard players set @e[tag=current] noi.lifetime 1
$summon marker ~ ~ ~ {Tags:["noi.const_direction","current2"],data:{UUID:$(UUID),1:$(3),2:$(4),3:$(5),4:$(6),5:$(7),6:$(8),7:$(9),8:$(10),9:$(11),10:$(12),11:$(13),12:$(14),13:$(15),14:$(16),15:"null",16:"null",1att:$(3att),2att:$(4att),3att:$(5att),4att:$(6att),5att:$(7att),6att:$(8att),7att:$(9att),8att:$(10att),9att:$(11att),10att:$(11att),11att:$(13att),12att:$(14att),13att:$(15att),14att:$(16att),15att:"null",16att:"null"}}
tp @e[tag=current2] ~ ~ ~ facing ^ ^ ^1
ride @e[tag=current2,limit=1] mount @e[tag=current,limit=1]
tag @e[tag=current] remove current
tag @e[tag=current2] remove current2
