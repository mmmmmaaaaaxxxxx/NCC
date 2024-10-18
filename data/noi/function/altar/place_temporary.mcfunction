execute unless score .allow_placing_wand_editors noi.settings matches 1 run return 0

#this is just the code from noi:altar/place
summon interaction ~ ~ ~ {width:2f,height:2f,Tags:["noi.wandholder","noi.empty","noi.itemholder","noi.temporary_wandholder","current"]}
#These 3 lines are super hacky and I had to spend a lot of time making sure the context works in this new implementation. Dont try this at home!
execute at @e[tag=current] run function noi:altar/wands/insert
tag @e[tag=current] remove current
tag @e[tag=done] remove done
tag @e[tag=current2] remove current2