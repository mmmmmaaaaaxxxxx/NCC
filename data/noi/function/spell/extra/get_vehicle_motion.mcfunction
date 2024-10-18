execute on vehicle run data modify storage temp:local Motion set from entity @s Motion
data modify entity @s data.Motion set from storage temp:local Motion

#execute store result entity @s data.Motion0 double .0001 on vehicle run data get entity @s Motion[0] 10000
#execute store result entity @s data.Motion1 double .0001 on vehicle run data get entity @s Motion[1] 10000
#execute store result entity @s data.Motion2 double .0001 on vehicle run data get entity @s Motion[2] 10000
