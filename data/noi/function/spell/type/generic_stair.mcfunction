#I have to figure out which direction to place the stair in
execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 summon marker run tag @s add current
execute store result score x noi.math run data get entity @e[type=marker,tag=current,limit=1] Pos[0] 10000000
execute store result score y noi.math run data get entity @e[type=marker,tag=current,limit=1] Pos[1] 10000000
execute store result score z noi.math run data get entity @e[type=marker,tag=current,limit=1] Pos[2] 10000000

scoreboard players set x_sign_bit noi.math 0
scoreboard players set z_sign_bit noi.math 0
execute if score x noi.math matches ..-1 store success score x_sign_bit noi.math run scoreboard players operation x noi.math *= #-1 noi.math
execute if score z noi.math matches ..-1 store success score z_sign_bit noi.math run scoreboard players operation z noi.math *= #-1 noi.math

$execute if score x noi.math > z noi.math if score x_sign_bit noi.math matches 0 if score y noi.math matches ..-1 run function noi:spell/extra/stair/d_x_p {block_type:$(1)}
$execute if score x noi.math > z noi.math if score x_sign_bit noi.math matches 0 if score y noi.math matches 0.. run function noi:spell/extra/stair/u_x_p {block_type:$(1)}
$execute if score x noi.math > z noi.math if score x_sign_bit noi.math matches 1 if score y noi.math matches ..-1 run function noi:spell/extra/stair/d_x_n {block_type:$(1)}
$execute if score x noi.math > z noi.math if score x_sign_bit noi.math matches 1 if score y noi.math matches 0.. run function noi:spell/extra/stair/u_x_n {block_type:$(1)}
$execute if score x noi.math <= z noi.math if score z_sign_bit noi.math matches 0 if score y noi.math matches ..-1 run function noi:spell/extra/stair/d_z_p {block_type:$(1)}
$execute if score x noi.math <= z noi.math if score z_sign_bit noi.math matches 0 if score y noi.math matches 0.. run function noi:spell/extra/stair/u_z_p {block_type:$(1)}
$execute if score x noi.math <= z noi.math if score z_sign_bit noi.math matches 1 if score y noi.math matches ..-1 run function noi:spell/extra/stair/d_z_n {block_type:$(1)}
$execute if score x noi.math <= z noi.math if score z_sign_bit noi.math matches 1 if score y noi.math matches 0.. run function noi:spell/extra/stair/u_z_n {block_type:$(1)}

kill @e[type=marker,tag=current]

$function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}
