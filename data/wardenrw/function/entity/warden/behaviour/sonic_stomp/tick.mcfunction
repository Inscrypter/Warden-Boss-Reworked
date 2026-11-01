execute if score @s wardenrw.entity.timer matches 260 run function wardenrw:entity/warden/behaviour/sonic_stomp/jump
execute if score @s wardenrw.entity.timer matches 280 run function wardenrw:entity/warden/behaviour/sonic_stomp/teleport

execute if score @s wardenrw.entity.timer matches 325..335 run particle sculk_charge{roll:0} ~ ~ ~ 0.5 0.1 0.5 0 2 force @a[distance=..64]
execute if score @s wardenrw.entity.timer matches 335 run function wardenrw:entity/warden/behaviour/sonic_stomp/start_wave
execute if score @s wardenrw.entity.timer matches 345 run function wardenrw:entity/warden/behaviour/sonic_stomp/start_wave
execute if score @s wardenrw.entity.timer matches 355 run function wardenrw:entity/warden/behaviour/sonic_stomp/start_wave

execute if score @s wardenrw.entity.timer matches 380 run function wardenrw:entity/warden/behaviour/sonic_stomp/jump
execute if score @s wardenrw.entity.timer matches 400 run function wardenrw:entity/warden/behaviour/sonic_stomp/teleport

execute if score @s wardenrw.entity.timer matches 445..455 run particle sculk_charge{roll:0} ~ ~ ~ 0.5 0.1 0.5 0 2 force @a[distance=..64]
execute if score @s wardenrw.entity.timer matches 455 run function wardenrw:entity/warden/behaviour/sonic_stomp/start_wave
execute if score @s wardenrw.entity.timer matches 465 run function wardenrw:entity/warden/behaviour/sonic_stomp/start_wave
execute if score @s wardenrw.entity.timer matches 475 run function wardenrw:entity/warden/behaviour/sonic_stomp/start_wave

execute as @s[tag=wardenrw.warden.falling] if score @s wardenrw.entity.timer matches ..359 run scoreboard players set @s wardenrw.entity.timer 281
execute as @s[tag=wardenrw.warden.falling] if score @s wardenrw.entity.timer matches 360.. run scoreboard players set @s wardenrw.entity.timer 401
execute as @s[tag=wardenrw.warden.falling] if predicate wardenrw:action/on_ground unless block ~ ~-1 ~ #wardenrw:non_solid run function wardenrw:entity/warden/behaviour/sonic_stomp/stomp

effect give @s slowness 1 4 true
effect give @s resistance 1 3 true
execute if score @s wardenrw.entity.timer matches 240..260 run particle sculk_soul ~ ~ ~ 0.5 0.1 0.5 0.05 2 force @a[distance=..64]

execute as @s[tag=!wardenrw.warden.phase_2] if score @s wardenrw.entity.timer matches 359.. run scoreboard players set @s wardenrw.entity.timer 1
execute as @s[tag=wardenrw.warden.phase_2] if score @s wardenrw.entity.timer matches 479.. run scoreboard players set @s wardenrw.entity.timer 121