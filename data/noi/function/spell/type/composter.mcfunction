#amount of space I have left
scoreboard players operation mana noi.math = @s noi.max_mana
scoreboard players operation mana noi.math -= @s noi.mana

#amount of raw mana I have
scoreboard players operation mana noi.math < @s noi.raw_mana
#now mana is set to the lower of the two things that could bound me

execute if score mana noi.math matches 51.. run scoreboard players set mana noi.math 50
scoreboard players operation @s noi.raw_mana -= mana noi.math
scoreboard players operation @s noi.mana += mana noi.math

$function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}
