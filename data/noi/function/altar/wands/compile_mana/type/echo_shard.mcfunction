tag @s add noi.local_variable

$execute store result score mana_cost noi.math run function noi:altar/wands/compile_mana/init {1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1mana:$(2mana),2mana:$(3mana),3mana:$(4mana),4mana:$(5mana),5mana:$(6mana),6mana:$(7mana),7mana:$(8mana),8mana:$(9mana),9mana:$(10mana),10mana:$(11mana),11mana:$(12mana),12mana:$(13mana),13mana:$(14mana),14mana:$(15mana),15mana:$(16mana),16mana:0}
scoreboard players operation mana_cost noi.math *= #3 noi.math
scoreboard players operation mana_cost noi.math /= #2 noi.math
$return run scoreboard players add mana_cost noi.math $(1mana)