summon item_display ~ ~ ~ {Tags:["wardenrw.sculk_wall.1"],billboard:"fixed",brightness:{block:15,sky:15},teleport_duration:1,item:{id:sculk},transformation:{scale:[6,0.9,6],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0]}}
summon item_display ~ ~ ~ {Tags:["wardenrw.sculk_wall.2"],billboard:"fixed",brightness:{block:15,sky:15},teleport_duration:1,item:{id:sculk},transformation:{scale:[6,0.9,6],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0]}}


execute as @s[tag=wardenrw.sculk_jaw.1] as @n[tag=wardenrw.sculk_wall.1] at @s run rotate @s 0 0
execute as @s[tag=wardenrw.sculk_jaw.1] as @n[tag=wardenrw.sculk_wall.2] at @s run rotate @s 0 1

execute as @s[tag=wardenrw.sculk_jaw.2] as @n[tag=wardenrw.sculk_wall.1] at @s run rotate @s 90 0
execute as @s[tag=wardenrw.sculk_jaw.2] as @n[tag=wardenrw.sculk_wall.2] at @s run rotate @s 90 1