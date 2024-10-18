scoreboard players add i noi.math 1
$particle dust $(color) .75 ~ ~ ~ 0 0 0 1 0 normal
scoreboard players set #continue noi.math 0
execute if score i noi.math matches ..25 positioned ^ ^ ^.5 if block ~ ~ ~ #noi:laser_pass_through run scoreboard players set #continue noi.math 1
execute if score #continue noi.math matches 0 run summon marker ~ ~ ~ {Tags:[current,noi.tokill]}
$execute if score #continue noi.math matches 1 positioned ^ ^ ^.5 run function noi:spell/extra/glass_pane_laser {color:"$(color)"}
