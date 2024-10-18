data modify storage temp:local Motion set from entity @s Motion
data modify entity @s Motion[0] set from storage temp:local Motion[2]
data modify entity @s Motion[1] set from storage temp:local Motion[0]
data modify entity @s Motion[2] set from storage temp:local Motion[1]