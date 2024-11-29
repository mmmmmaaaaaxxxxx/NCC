#1/4 scale
attribute @s generic.scale modifier remove noi_scale
attribute @s player.entity_interaction_range modifier remove noi_scale
attribute @s player.block_interaction_range modifier remove noi_scale
attribute @s generic.jump_strength modifier remove noi_scale
attribute @s generic.step_height modifier remove noi_scale
attribute @s generic.movement_speed modifier remove noi_scale

attribute @s generic.scale modifier add noi_scale -.75 add_multiplied_total
attribute @s player.entity_interaction_range modifier add noi_scale -.75 add_multiplied_total
attribute @s player.block_interaction_range modifier add noi_scale -.75 add_multiplied_total
#1-sqrt(.25) to maintain a consistent jump height ratio
attribute @s generic.jump_strength modifier add noi_scale -.5 add_multiplied_total
attribute @s generic.step_height modifier add noi_scale -.75 add_multiplied_total
attribute @s generic.movement_speed modifier add noi_scale -.75 add_multiplied_total

$function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}
