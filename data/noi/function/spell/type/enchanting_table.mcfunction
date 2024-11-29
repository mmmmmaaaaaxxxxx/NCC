scoreboard players reset value noi.math
execute store result score value noi.math run experience query @s levels
$execute if score value noi.math matches ..2 run return run function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}

#code from potion consumption functions
scoreboard players add @s noi.raw_mana 50
execute store result score #condition noi.math if score @s noi.raw_mana matches 401..
execute if score #condition noi.math matches 1 if score @s noi.raw_mana matches ..450 run scoreboard players set @s noi.raw_mana 400
execute if score #condition noi.math matches 1 if score @s noi.raw_mana matches 451.. run scoreboard players remove @s noi.raw_mana 50

experience add @s -3 levels

playsound minecraft:block.enchantment_table.use player @a[distance=..16] ~ ~ ~
$function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}
