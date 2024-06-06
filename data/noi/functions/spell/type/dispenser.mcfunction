#this spell randomizes the order of all spells after it

#find out how many spells are after it, output is i
$data modify storage temp:local iterationlist set value [{$(16):1},{$(15):1},{$(14):1},{$(13):1},{$(12):1},{$(11):1},{$(10):1},{$(9):1},{$(8):1},{$(7):1},{$(6):1},{$(5):1},{$(4):1},{$(3):1},{$(2):1}]
$data modify storage temp:local spelllist set value [$(16),$(15),$(14),$(13),$(12),$(11),$(10),$(9),$(8),$(7),$(6),$(5),$(4),$(3),$(2)]
$data modify storage temp:local attlist set value [$(16att),$(15att),$(14att),$(13att),$(12att),$(11att),$(10att),$(9att),$(8att),$(7att),$(6att),$(5att),$(4att),$(3att),$(2att)]

scoreboard players set i noi.math 15
function noi:spell/extra/dispenser_loop_count

#randomize the order of the i next spells
$data modify storage temp:local macro set value {UUID:$(UUID),1:"null",2:"null",3:"null",4:"null",5:"null",6:"null",7:"null",8:"null",9:"null",10:"null",11:"null",12:"null",13:"null",14:"null",15:"null",16:"null",1att:"null",2att:"null",3att:"null",4att:"null",5att:"null",6att:"null",7att:"null",8att:"null",9att:"null",10att:"null",11att:"null",12att:"null",13att:"null",14att:"null",15att:"null",16att:"null"}
    #generates a random number 0..i-1, which is used as an index in the list of spells to be shuffled
execute store result score #random noi.math run random value 0..2147483646
execute store result storage temp:local random int 1 run scoreboard players operation #random noi.math %= i noi.math
execute store result storage temp:local it int 1 run scoreboard players get i noi.math

execute if score i noi.math matches 1.. run function noi:spell/extra/dispenser_loop_random with storage temp:local

#run the scrambled spell in 1s (to make it less worth it to spam dispensers for cheaper spells)
summon marker ~ ~ ~ {Tags:["noi.spelldelay","current2"]}
data modify entity @e[tag=current2,limit=1] data set from storage temp:local macro
tp @e[tag=current2] ~ ~ ~ facing ^ ^ ^1
scoreboard players set @e[tag=current2] noi.lifetime 20
tag @e[tag=current2] remove current2


playsound minecraft:block.dispenser.launch player @a[distance=..4]