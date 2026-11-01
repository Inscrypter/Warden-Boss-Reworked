scoreboard players remove @s wardenrw.slowcast.duration 1

#particle sonic_boom ~ ~ ~ 0.0 0.0 0.0 0 1 normal @a[distance=..64]
particle sculk_charge_pop ~ ~0.1 ~ 0.4 0.1 0.4 0.01 3 normal @a[distance=..64]
particle block{block_state:{"id":sculk}} ~ ~0.1 ~ 0.4 0.1 0.4 0.01 3 normal @a[distance=..64]

execute as @s[tag=wardenrw.sculk_shockwave.sound.true] run playsound block.sculk.hit ambient @a ~ ~ ~ 0.5 1 0

execute store result storage wardenrw:temp rotate.x float 0.1 run scoreboard players get @s wardenrw.math.temp
function wardenrw:entity/warden/behaviour/projectile/sculk_shockwave/rotate with storage wardenrw:temp rotate

scoreboard players operation steps wardenrw.slowcast.temp = @s wardenrw.slowcast.steps
execute rotated ~ 0 positioned ^ ^ ^ run function wardenrw:entity/warden/behaviour/projectile/sculk_shockwave/step

execute unless score @s wardenrw.slowcast.duration matches 1.. run kill