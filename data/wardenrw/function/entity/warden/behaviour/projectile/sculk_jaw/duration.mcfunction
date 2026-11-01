scoreboard players remove @s wardenrw.slowcast.duration 1
execute if block ~ ~0.5 ~ #wardenrw:non_solid run tp @s ~ ~-0.1 ~
execute store result storage wardenrw:temp rotate.y float 1 run scoreboard players get @s wardenrw.math.temp

execute if score @s wardenrw.slowcast.duration matches 8 run function wardenrw:entity/warden/behaviour/projectile/sculk_jaw/start
execute as @s[tag=wardenrw.sculk_jaw.1] run function wardenrw:entity/warden/behaviour/projectile/sculk_jaw/ver_1
execute as @s[tag=wardenrw.sculk_jaw.2] run function wardenrw:entity/warden/behaviour/projectile/sculk_jaw/ver_2
execute unless score @s wardenrw.slowcast.duration matches 1.. run kill @n[tag=wardenrw.sculk_wall.1]
execute unless score @s wardenrw.slowcast.duration matches 1.. run kill @n[tag=wardenrw.sculk_wall.2]
execute unless score @s wardenrw.slowcast.duration matches 1.. run kill