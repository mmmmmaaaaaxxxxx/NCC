scoreboard players set lonely noi.math 1
function noi:wand/make_name
#11% are lonely (need to reroll because they got a short name like The Throngler,) 1 in 9 wands

execute if score lonely noi.math matches 1 run function noi:wand/make_name
#1.2% are lonely, 1 in 79 wands

execute if score lonely noi.math matches 1 run function noi:wand/make_name
#.14% are lonely, 1 in 702 wands

execute if score lonely noi.math matches 1 if score the_exists noi.math matches 0 run data modify storage temp:local wandTitle prepend value "The "

$summon armor_stand ~ ~ ~ {Tags:["current"],HandItems:[{id:"warped_fungus_on_a_stick",components:{custom_data:{noi.wand_format:2,SpellSlotsCount:$(size)b,BaseManaCost:$(base_cost),HideFlags:4,Unbreakable:1b,noi.wand:1b,Spell:{1att:"null",2att:"null",3att:"null",4att:"null",5att:"null",6att:"null",1:"null",2:"null",3:"null",4:"null",5:"null",6:"null",7:"null",8:"null",9:"null",10:"null",11:"null",12:"null",13:"null",14:"null",15:"null",16:"null"},Inv:{1:{},2:{},3:{},4:{},5:{},6:{},7:{},8:{},9:{},10:{},11:{},12:{},13:{},14:{},15:{},16:{}}}},Count:1b}]}
item modify entity @e[tag=current] weapon.mainhand noi:set_wand_name
execute at @s run summon item ~ ~ ~ {PickupDelay:0,Item:{id:"ice",Count:1b},Tags:["current2","noi.given_wand"]}
data modify entity @e[tag=current2,limit=1] Item set from entity @e[tag=current,limit=1] HandItems[0]
data modify entity @e[tag=current2,limit=1] Owner set from entity @s UUID

function noi:wand/give_texture

kill @e[tag=current]
tag @e[tag=current2] remove current2