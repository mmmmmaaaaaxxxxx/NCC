#generic glass refers to stained glass. Clear glass is its own spell
$data modify storage temp:local macro.color set from storage noi:data glass_colors.$(1).color
$data modify storage temp:local macro merge value {UUID:$(UUID),1:$(1),2:$(2),3:$(3),4:$(4),5:$(5),6:$(6),7:$(7),8:$(8),9:$(9),10:$(10),11:$(11),12:$(12),13:$(13),14:$(14),15:$(15),16:$(16),1att:$(1att),2att:$(2att),3att:$(3att),4att:$(4att),5att:$(5att),6att:$(6att),7att:$(7att),8att:$(8att),9att:$(9att),10att:$(10att),11att:$(11att),12att:$(12att),13att:$(13att),14att:$(14att),15att:$(15att),16att:$(16att)}

execute summon marker run function noi:spell/extra/stained_glass_ball_summon with storage temp:local macro
