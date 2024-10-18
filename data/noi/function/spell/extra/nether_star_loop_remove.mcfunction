$data modify storage temp:local data.$(it) set from storage temp:local spelllist[0]
$data modify storage temp:local data.$(it)att set from storage temp:local attlist[0]

data remove storage temp:local spelllist[0]
data remove storage temp:local attlist[0]

execute store result storage temp:local it int 1 run scoreboard players add i noi.math 1
execute if data storage temp:local spelllist[0] run function noi:spell/extra/nether_star_loop_remove with storage temp:local