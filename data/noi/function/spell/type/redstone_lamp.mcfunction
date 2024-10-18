#50% less gravity
attribute @s minecraft:generic.gravity modifier remove e314d148-6afb-48cb-af46-c4a70d503ade
attribute @s minecraft:generic.gravity modifier add e314d148-6afb-48cb-af46-c4a70d503ade "noi_gravity" -.5 add_multiplied_total

$function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}

playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3