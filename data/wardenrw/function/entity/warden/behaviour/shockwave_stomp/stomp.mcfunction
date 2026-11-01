scoreboard players set rotation wardenrw.math.temp 0
execute store result storage wardenrw:temp rotate.x int 1 run scoreboard players get rotation wardenrw.math.temp
execute if score rotation wardenrw.math.temp matches ..359 run function wardenrw:entity/warden/behaviour/shockwave_stomp/wave with storage wardenrw:temp rotate

execute at @s run function wardenrw:entity/warden/behaviour/shockwave_stomp/burst

execute as @e[distance=..6,type=!warden,type=#wardenrw:mobs_player] run damage @s 36 wardenrw:sculk_wave by @n[type=warden]

attribute @s gravity modifier remove wardenrw:gravity
tag @s remove wardenrw.warden.falling

particle dust_pillar{block_state:sculk} ~ ~ ~ 3 0.1 3 1 120 normal @a[distance=..64]
particle sculk_charge{roll:0} ~ ~ ~ 3 0.1 3 0 30 force @a[distance=..64]
particle sculk_soul ~ ~ ~ 0 0 0 0.2 30 normal @a[distance=..64]
particle flash{color:[0,0.5,0.5,1]} ^ ^ ^ 1.5 1.5 1.5 0.5 5 normal @a[distance=..64]
playsound item.mace.smash_ground_heavy ambient @a ~ ~ ~ 3 0.75 0
playsound item.mace.smash_ground_heavy ambient @a ~ ~ ~ 3 1 0
playsound item.mace.smash_ground_heavy ambient @a ~ ~ ~ 3 1.25 0
