#This function is not used anywhere thankfully. It is my horrible attempt to detect block faces which used /data up to 3000 times per ball bounce (plus up to 1k tps)
#I have left this in as a reminder to check if cloudwolf made a video about it before writing an implementation of anything.
tp ^ ^ ^.001

execute store result score @e[tag=current] noi.x2 run data get entity @s Pos[0]
execute store result score @e[tag=current] noi.y2 run data get entity @s Pos[1]
execute store result score @e[tag=current] noi.z2 run data get entity @s Pos[2]

scoreboard players add it noi.math 1

execute if score it noi.math matches ..1000 as @e[tag=current] if predicate noi:not_new_block as @e[tag=current2,limit=1] positioned ^ ^ ^.001 run function noi:spell/extra/generic_ball_trigger_pos
