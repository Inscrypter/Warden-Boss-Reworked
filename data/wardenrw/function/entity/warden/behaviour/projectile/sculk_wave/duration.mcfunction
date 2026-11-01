scoreboard players remove @s wardenrw.slowcast.duration 1

#particle sonic_boom ~ ~ ~ 0.0 0.0 0.0 0 1 normal @a[distance=..64]
particle sculk_charge{roll:0} ~ ~0.1 ~ 0.6 0.1 0.6 0.01 5 normal @a[distance=..64]
particle scrape ~ ~0.1 ~ 0.6 0.6 0.6 0.05 5 normal @a[distance=..64]
particle block{block_state:{"id":sculk}} ~ ~0.1 ~ 0.5 0.1 0.5 0.01 5 normal @a[distance=..64]

playsound block.sculk.hit ambient @a ~ ~ ~ 1 0.75 0
playsound block.sculk.hit ambient @a ~ ~ ~ 1 1.25 0

execute store result storage wardenrw:temp rotate.x float 0.1 run scoreboard players get @s wardenrw.math.temp
function wardenrw:entity/warden/behaviour/projectile/sculk_wave/rotate with storage wardenrw:temp rotate

scoreboard players operation steps wardenrw.slowcast.temp = @s wardenrw.slowcast.steps
execute positioned ^ ^ ^ run function wardenrw:entity/warden/behaviour/projectile/sculk_wave/step

execute unless score @s wardenrw.slowcast.duration matches 1.. run kill