execute on vehicle run tag @s add vehicle

$execute at @e[tag=vehicle] rotated as @s run tp @e[tag=vehicle] ^ ^ ^$(speed)
execute as @e[tag=vehicle] at @s run tp @s ~ ~ ~ ~10 ~ 

execute if entity @s[tag=noi.tooltype.generic_hoe] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~-.2 if block ~ ~ ~ #minecraft:mineable/hoe run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_hoe] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~.2 if block ~ ~ ~ #minecraft:mineable/hoe run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_hoe] as @e[tag=vehicle] at @s positioned ~.2 ~ ~-.2 if block ~ ~ ~ #minecraft:mineable/hoe run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_hoe] as @e[tag=vehicle] at @s positioned ~.2 ~ ~.2 if block ~ ~ ~ #minecraft:mineable/hoe run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_hoe] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~-.2 unless block ~ ~ ~ #minecraft:mineable/hoe unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_hoe] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~.2 unless block ~ ~ ~ #minecraft:mineable/hoe unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_hoe] as @e[tag=vehicle] at @s positioned ~.2 ~ ~-.2 unless block ~ ~ ~ #minecraft:mineable/hoe unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_hoe] as @e[tag=vehicle] at @s positioned ~.2 ~ ~.2 unless block ~ ~ ~ #minecraft:mineable/hoe unless block ~ ~ ~ #noi:tool_pass_through run kill

execute if entity @s[tag=noi.tooltype.generic_shovel] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~-.2 if block ~ ~ ~ #minecraft:mineable/shovel run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_shovel] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~.2 if block ~ ~ ~ #minecraft:mineable/shovel run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_shovel] as @e[tag=vehicle] at @s positioned ~.2 ~ ~-.2 if block ~ ~ ~ #minecraft:mineable/shovel run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_shovel] as @e[tag=vehicle] at @s positioned ~.2 ~ ~.2 if block ~ ~ ~ #minecraft:mineable/shovel run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_shovel] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~-.2 unless block ~ ~ ~ #minecraft:mineable/shovel unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_shovel] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~.2 unless block ~ ~ ~ #minecraft:mineable/shovel unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_shovel] as @e[tag=vehicle] at @s positioned ~.2 ~ ~-.2 unless block ~ ~ ~ #minecraft:mineable/shovel unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_shovel] as @e[tag=vehicle] at @s positioned ~.2 ~ ~.2 unless block ~ ~ ~ #minecraft:mineable/shovel unless block ~ ~ ~ #noi:tool_pass_through run kill

execute if entity @s[tag=noi.tooltype.generic_sword] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~-.2 if block ~ ~ ~ #minecraft:sword_efficient run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_sword] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~.2 if block ~ ~ ~ #minecraft:sword_efficient run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_sword] as @e[tag=vehicle] at @s positioned ~.2 ~ ~-.2 if block ~ ~ ~ #minecraft:sword_efficient run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_sword] as @e[tag=vehicle] at @s positioned ~.2 ~ ~.2 if block ~ ~ ~ #minecraft:sword_efficient run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_sword] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~-.2 unless block ~ ~ ~ #minecraft:sword_efficient unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_sword] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~.2 unless block ~ ~ ~ #minecraft:sword_efficient unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_sword] as @e[tag=vehicle] at @s positioned ~.2 ~ ~-.2 unless block ~ ~ ~ #minecraft:sword_efficient unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_sword] as @e[tag=vehicle] at @s positioned ~.2 ~ ~.2 unless block ~ ~ ~ #minecraft:sword_efficient unless block ~ ~ ~ #noi:tool_pass_through run kill

execute if entity @s[tag=noi.tooltype.generic_axe] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~-.2 if block ~ ~ ~ #minecraft:mineable/axe run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_axe] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~.2 if block ~ ~ ~ #minecraft:mineable/axe run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_axe] as @e[tag=vehicle] at @s positioned ~.2 ~ ~-.2 if block ~ ~ ~ #minecraft:mineable/axe run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_axe] as @e[tag=vehicle] at @s positioned ~.2 ~ ~.2 if block ~ ~ ~ #minecraft:mineable/axe run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_axe] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~-.2 unless block ~ ~ ~ #minecraft:mineable/axe unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_axe] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~.2 unless block ~ ~ ~ #minecraft:mineable/axe unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_axe] as @e[tag=vehicle] at @s positioned ~.2 ~ ~-.2 unless block ~ ~ ~ #minecraft:mineable/axe unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_axe] as @e[tag=vehicle] at @s positioned ~.2 ~ ~.2 unless block ~ ~ ~ #minecraft:mineable/axe unless block ~ ~ ~ #noi:tool_pass_through run kill

execute if entity @s[tag=noi.tooltype.generic_pickaxe] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~-.2 if block ~ ~ ~ #minecraft:mineable/pickaxe run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_pickaxe] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~.2 if block ~ ~ ~ #minecraft:mineable/pickaxe run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_pickaxe] as @e[tag=vehicle] at @s positioned ~.2 ~ ~-.2 if block ~ ~ ~ #minecraft:mineable/pickaxe run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_pickaxe] as @e[tag=vehicle] at @s positioned ~.2 ~ ~.2 if block ~ ~ ~ #minecraft:mineable/pickaxe run function noi:spell/extra/thrown_tool_break
execute if entity @s[tag=noi.tooltype.generic_pickaxe] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~-.2 unless block ~ ~ ~ #minecraft:mineable/pickaxe unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_pickaxe] as @e[tag=vehicle] at @s positioned ~-.2 ~ ~.2 unless block ~ ~ ~ #minecraft:mineable/pickaxe unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_pickaxe] as @e[tag=vehicle] at @s positioned ~.2 ~ ~-.2 unless block ~ ~ ~ #minecraft:mineable/pickaxe unless block ~ ~ ~ #noi:tool_pass_through run kill
execute if entity @s[tag=noi.tooltype.generic_pickaxe] as @e[tag=vehicle] at @s positioned ~.2 ~ ~.2 unless block ~ ~ ~ #minecraft:mineable/pickaxe unless block ~ ~ ~ #noi:tool_pass_through run kill

tag @e[tag=vehicle] remove vehicle