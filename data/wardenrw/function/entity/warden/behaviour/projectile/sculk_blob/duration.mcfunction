scoreboard players remove @s wardenrw.slowcast.duration 1

particle sculk_soul ~ ~ ~ 0.25 0.25 0.25 0.05 1 normal @a[distance=..64]
particle sculk_charge_pop ~ ~ ~ 0.25 0.25 0.25 0.01 10 normal @a[distance=..64]
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=#wardenrw:mobs_player,type=!warden] run damage @s 28 wardenrw:sculk_blob by @n[type=warden]

execute as @s[tag=!wardenrw.on_ground] if predicate wardenrw:action/on_ground run function wardenrw:entity/warden/behaviour/projectile/sculk_blob/land

execute unless score @s wardenrw.slowcast.duration matches 1.. run kill