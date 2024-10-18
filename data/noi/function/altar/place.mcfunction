execute rotated ~ 0 run summon interaction ^-0.5 ^ ^.5 {width:2f,height:2f,Tags:["noi.wandholder","noi.empty","noi.itemholder","current"]}
execute rotated ~ 0 run tp @e[tag=current] ^-.5 ^ ^.5 ~ 0
tag @e[tag=current] remove current