execute store result score #size noi.math run data get entity @s item.tag.SpellSlotsCount

execute if score #size noi.math matches 0 run return 0
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"1: $(1)"}'
execute if score #size noi.math matches 1 run return 1
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"2: $(2)"}'
execute if score #size noi.math matches 2 run return 2
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"3: $(3)"}'
execute if score #size noi.math matches 3 run return 3
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"4: $(4)"}'
execute if score #size noi.math matches 4 run return 4
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"5: $(5)"}'
execute if score #size noi.math matches 5 run return 5
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"6: $(6)"}'
execute if score #size noi.math matches 6 run return 6
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"7: $(7)"}'
execute if score #size noi.math matches 7 run return 7
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"8: $(8)"}'
execute if score #size noi.math matches 8 run return 8
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"9: $(9)"}'
execute if score #size noi.math matches 9 run return 9
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"A: $(10)"}'
execute if score #size noi.math matches 10 run return 10
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"B: $(11)"}'
execute if score #size noi.math matches 11 run return 11
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"C: $(12)"}'
execute if score #size noi.math matches 12 run return 12
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"D: $(13)"}'
execute if score #size noi.math matches 13 run return 13
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"E: $(14)"}'
execute if score #size noi.math matches 14 run return 14
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"F: $(15)"}'
execute if score #size noi.math matches 15 run return 15
$data modify storage temp:local wand_lore append value '{"italic":false,"color":"#9696FF","text":"G: $(16)"}'