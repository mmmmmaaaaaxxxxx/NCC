$data modify storage temp:local macro.$(it) set from storage temp:local spelllist[$(random)]
$data modify storage temp:local macro.$(it)att set from storage temp:local attlist[$(random)]

$data remove storage temp:local spelllist[$(random)]
$data remove storage temp:local attlist[$(random)]

execute store result storage temp:local it int 1 run scoreboard players remove i noi.math 1
execute store result score #random noi.math run random value 0..2147483646
execute store result storage temp:local random int 1 run scoreboard players operation #random noi.math %= i noi.math

execute if score i noi.math matches 1.. run function noi:spell/extra/dispenser_loop_random with storage temp:local
