#this is the most important function that everything else works through
tag @e[tag=current] remove current
kill @e[tag=noi.tokill]

#add your own function to noi:spell_conditional and if you dont want a spell to run in the current execution context, set the fakeplayer returnvalue to 1 for noi.api
#do Not set it to 0. if the spell should run for your purposes, just return or do nothing
#if you want to be efficient, include "execute unless score returnvalue noi.api matches 0 run return 0" at the front of your function
scoreboard players set returnvalue noi.api 0
function #noi:spell_conditional
execute unless score returnvalue noi.api matches 0 run return 0

$execute if data storage noi:att $(1att).null run function noi:spell/type/$(1) {UUID:$(UUID),1:$(1),2:$(2),3:$(3),4:$(4),5:$(5),6:$(6),7:$(7),8:$(8),9:$(9),10:$(10),11:$(11),12:$(12),13:$(13),14:$(14),15:$(15),16:$(16),1att:$(1att),2att:$(2att),3att:$(3att),4att:$(4att),5att:$(5att),6att:$(6att),7att:$(7att),8att:$(8att),9att:$(9att),10att:$(10att),11att:$(11att),12att:$(12att),13att:$(13att),14att:$(14att),15att:$(15att),16att:$(16att)}
$execute if data storage noi:att $(1att).ball_mod run function noi:spell/type/$(1) {UUID:$(UUID),1:$(1),2:$(2),3:$(3),4:$(4),5:$(5),6:$(6),7:$(7),8:$(8),9:$(9),10:$(10),11:$(11),12:$(12),13:$(13),14:$(14),15:$(15),16:$(16),1att:$(1att),2att:$(2att),3att:$(3att),4att:$(4att),5att:$(5att),6att:$(6att),7att:$(7att),8att:$(8att),9att:$(9att),10att:$(10att),11att:$(11att),12att:$(12att),13att:$(13att),14att:$(14att),15att:$(15att),16att:$(16att)}

$execute unless data storage noi:att $(1att).null run function noi:spell/type/$(1att) {UUID:$(UUID),1:$(1),2:$(2),3:$(3),4:$(4),5:$(5),6:$(6),7:$(7),8:$(8),9:$(9),10:$(10),11:$(11),12:$(12),13:$(13),14:$(14),15:$(15),16:$(16),1att:$(1att),2att:$(2att),3att:$(3att),4att:$(4att),5att:$(5att),6att:$(6att),7att:$(7att),8att:$(8att),9att:$(9att),10att:$(10att),11att:$(11att),12att:$(12att),13att:$(13att),14att:$(14att),15att:$(15att),16att:$(16att)}
