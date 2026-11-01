scoreboard players set rotation wardenrw.math.temp 0
execute store result storage wardenrw:temp rotate.x int 1 run scoreboard players get rotation wardenrw.math.temp
execute if score rotation wardenrw.math.temp matches ..359 run function wardenrw:entity/warden/behaviour/sonic_stomp/wave with storage wardenrw:temp rotate

execute as @e[distance=..4,type=!warden,type=#wardenrw:mobs_player] run damage @s 36 wardenrw:sculk_wave by @n[type=warden]

attribute @s gravity modifier remove wardenrw:gravity
tag @s remove wardenrw.warden.falling

particle dust_pillar{block_state:sculk} ~ ~ ~ 5 0.1 5 1 240 normal @a[distance=..64]
particle sculk_charge{roll:0} ~ ~ ~ 5 0.1 5 0.1 60 force @a[distance=..64]
particle sculk_soul ~ ~ ~ 0 0 0 0.1 60 normal @a[distance=..64]
particle flash{color:[0,0.5,0.5,1]} ^ ^ ^ 2.5 2.5 2.5 0.5 10 normal @a[distance=..64]
execute summon item_display run function wardenrw:vfx/sculk_shockwave/setup {scale:24,facing:no}
execute summon item_display run function wardenrw:vfx/sculk_shockwave/setup {scale:18,facing:facing}
playsound item.mace.smash_ground_heavy ambient @a ~ ~ ~ 3 0.75 0
playsound item.mace.smash_ground_heavy ambient @a ~ ~ ~ 3 1 0
playsound item.mace.smash_ground_heavy ambient @a ~ ~ ~ 3 1.25 0
playsound entity.warden.sonic_charge ambient @a ~ ~ ~ 3 2 0
playsound entity.warden.sonic_charge ambient @a ~ ~ ~ 3 1.5 0