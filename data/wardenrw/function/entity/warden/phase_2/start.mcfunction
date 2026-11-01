tag @s add wardenrw.warden.phase_2
summon marker ~ ~ ~ {Tags:["wardenrw.warden.arena"]}
execute as @n[type=marker,tag=wardenrw.warden.arena] run function wardenrw:entity/warden/arena/build

scoreboard players set @s wardenrw.entity.timer 242
scoreboard players set @s wardenrw.entity.warden.attack 6
scoreboard players set @s wardenrw.entity.warden.attack_count 0

scoreboard players operation @n[tag=wardenrw.warden.arena] wardenrw.entity.warden.id = @s wardenrw.entity.warden.id



execute as @e[type=#wardenrw:mobs_player,distance=..30] run function wardenrw:entity/warden/phase_2/tp with storage wardenrw:entity warden.pos
