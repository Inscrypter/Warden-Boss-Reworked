execute positioned ^ ^ ^3 run particle sculk_charge_pop ~ ~0.6 ~ 1 0 0.25 0.01 20 force @a[distance=..64]
execute positioned ^ ^ ^-3 run particle sculk_charge_pop ~ ~0.6 ~ 1 0 0.25 0.01 20 force @a[distance=..64]

execute if score @s wardenrw.slowcast.duration matches ..16 positioned ^ ^ ^3 positioned ~-3 ~-3 ~-0.5 as @e[dx=5,dy=5,dz=0,type=#wardenrw:mobs_player,type=!warden] run damage @s 36 wardenrw:sculk_jaw
execute if score @s wardenrw.slowcast.duration matches ..16 positioned ^ ^ ^-3 positioned ~-3 ~-3 ~-0.5 as @e[dx=5,dy=5,dz=0,type=#wardenrw:mobs_player,type=!warden] run damage @s 36 wardenrw:sculk_jaw

execute if score @s wardenrw.slowcast.duration matches ..8 run function wardenrw:entity/warden/behaviour/projectile/sculk_jaw/rotate with storage wardenrw:temp rotate

execute if score @s wardenrw.slowcast.duration matches 1 positioned ~-3 ~-3 ~-1.5 as @e[dx=5,dy=5,dz=2,type=#wardenrw:mobs_player,type=!warden] run damage @s 36 wardenrw:sculk_jaw
execute if score @s wardenrw.slowcast.duration matches 1 run particle block{block_state:sculk} ~ ~ ~ 1.5 1.5 0.5 0.1 100 force @a[distance=..64]
execute if score @s wardenrw.slowcast.duration matches 1 run particle dust_pillar{block_state:sculk} ~ ~ ~ 1.5 1.5 0.5 0.1 100 force @a[distance=..64]
execute if score @s wardenrw.slowcast.duration matches 1 run particle sculk_charge_pop ~ ~ ~ 1.5 1.5 0.5 0.1 50 force @a[distance=..64]
execute if score @s wardenrw.slowcast.duration matches 1 run particle sculk_soul ~ ~ ~ 1.5 1.5 0.5 0.1 50 force @a[distance=..64]
execute if score @s wardenrw.slowcast.duration matches 1 run function wardenrw:entity/warden/behaviour/projectile/sculk_jaw/sound
execute if score @s wardenrw.slowcast.duration matches 0 positioned ~ ~0.5 ~ run function wardenrw:entity/warden/behaviour/projectile/sculk_jaw/wave
