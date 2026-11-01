scoreboard players remove @s wardenrw.slowcast.duration 1

#particle sonic_boom ~ ~ ~ 0.0 0.0 0.0 0 1 normal @a[distance=..64]
particle sculk_charge{roll:0} ~ ~0.1 ~ 0.5 0.1 0.5 0.01 2 normal @a[distance=..64]

scoreboard players operation math1 wardenrw.math.temp = @s wardenrw.slowcast.duration
scoreboard players set math2 wardenrw.math.temp 6
scoreboard players operation math1 wardenrw.math.temp %= math2 wardenrw.math.temp
execute if score math1 wardenrw.math.temp matches 0 summon marker run function wardenrw:entity/warden/behaviour/projectile/sonic_wave/sonic_pillar/setup

scoreboard players operation steps wardenrw.slowcast.temp = @s wardenrw.slowcast.steps
execute positioned ^ ^ ^ run function wardenrw:entity/warden/behaviour/projectile/sonic_wave/step

execute unless score @s wardenrw.slowcast.duration matches 1.. run kill