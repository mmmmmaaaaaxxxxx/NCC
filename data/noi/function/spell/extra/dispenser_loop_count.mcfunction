execute unless data storage temp:local iterationlist[0]."null" run return 0
scoreboard players remove i noi.math 1
data remove storage temp:local iterationlist[0]
data remove storage temp:local spelllist[0]
data remove storage temp:local attlist[0]

execute unless score i noi.math matches ..0 run function noi:spell/extra/dispenser_loop_count