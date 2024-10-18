execute store result score #random noi.math run random value 0..25

execute if score #random noi.math matches 0 facing ^1 ^1 ^1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 1 facing ^1 ^1 ^ run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 2 facing ^1 ^1 ^-1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 3 facing ^1 ^ ^1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 4 facing ^1 ^ ^ run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 5 facing ^1 ^ ^-1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 6 facing ^1 ^-1 ^1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 7 facing ^1 ^-1 ^ run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 8 facing ^1 ^-1 ^-1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 9 facing ^ ^1 ^1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 10 facing ^ ^1 ^ run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 11 facing ^ ^1 ^-1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 12 facing ^ ^ ^1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 13 facing ^ ^ ^-1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 14 facing ^ ^-1 ^1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 15 facing ^ ^-1 ^ run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 16 facing ^ ^-1 ^-1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 17 facing ^-1 ^1 ^1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 18 facing ^-1 ^1 ^ run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 19 facing ^-1 ^1 ^-1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 20 facing ^-1 ^ ^1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 21 facing ^-1 ^ ^ run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 22 facing ^-1 ^ ^-1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 23 facing ^-1 ^-1 ^1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 24 facing ^-1 ^-1 ^ run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}
execute if score #random noi.math matches 25 facing ^-1 ^-1 ^-1 run summon marker ^ ^ ^1 {Tags:["current","noi.tokill"]}

$execute facing entity @e[tag=current] eyes run function noi:spell/init {UUID:$(UUID),1:$(2),2:$(3),3:$(4),4:$(5),5:$(6),6:$(7),7:$(8),8:$(9),9:$(10),10:$(11),11:$(12),12:$(13),13:$(14),14:$(15),15:$(16),16:"null",1att:$(2att),2att:$(3att),3att:$(4att),4att:$(5att),5att:$(6att),6att:$(7att),7att:$(8att),8att:$(9att),9att:$(10att),10att:$(11att),11att:$(12att),12att:$(13att),13att:$(14att),14att:$(15att),15att:$(16att),16att:"null"}

playsound minecraft:block.ender_chest.open player @a[distance=..4]