execute positioned ~-.5 ~-1.5 ~-.5 run kill @e[type=#noi:stops_dripstone,dx=0,dy=0,dz=0]

execute unless block ~-.5 ~-1.5 ~-.5 #noi:dripstone_stoppers unless block ~-.5 ~-1.5 ~.5 #noi:dripstone_stoppers unless block ~.5 ~-1.5 ~-.5 #noi:dripstone_stoppers unless block ~.5 ~-1.5 ~.5 #noi:dripstone_stoppers unless entity @s[y=-64,dy=-100] positioned ~ ~-1 ~ run function noi:spell/type/pointed_dripstone with entity @s data
execute unless block ~-.5 ~-1.5 ~-.5 #noi:dripstone_stoppers unless block ~-.5 ~-1.5 ~.5 #noi:dripstone_stoppers unless block ~.5 ~-1.5 ~-.5 #noi:dripstone_stoppers unless block ~.5 ~-1.5 ~.5 #noi:dripstone_stoppers unless entity @s[y=-64,dy=-100] run fill ~-.5 ~-1.5 ~-.5 ~.5 ~-1.5 ~.5 air destroy
$execute if block ~ ~-1.5 ~ #noi:dripstone_stoppers facing ~ ~1 ~ run function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}

kill