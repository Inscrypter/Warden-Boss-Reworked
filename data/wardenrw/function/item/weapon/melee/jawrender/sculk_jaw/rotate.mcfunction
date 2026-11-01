scoreboard players set math1 wardenrw.math.temp 2
scoreboard players operation @s wardenrw.math.temp *= math1 wardenrw.math.temp
$execute as @n[tag=wardenrw.sculk_wall.1] at @s run rotate @s ~ ~$(y)
$execute as @n[tag=wardenrw.sculk_wall.2] at @s run rotate @s ~ ~-$(y)
playsound entity.warden.tendril_clicks ambient @a ~ ~ ~ 2 0.5 0