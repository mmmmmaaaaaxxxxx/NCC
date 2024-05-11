scoreboard players remove %range noi.math 1
execute if score %bounce noi.math matches 1.. unless block ^ ^ ^0.25 #noi:ball_pass_through run function noi:math/raycast/bounce
execute if score %range noi.math matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #noi:ball_pass_through run function noi:math/raycast/loop