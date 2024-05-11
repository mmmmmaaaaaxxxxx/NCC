execute unless data storage temp:local iterationlist[0]."nether_star" run return 0
scoreboard players add i noi.math 1
data remove storage temp:local iterationlist[0]
data remove storage temp:local spelllist[0]
data remove storage temp:local attlist[0]

function noi:spell/extra/nether_star_loop_count