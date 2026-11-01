scoreboard players set @s wardenrw.math.temp 20
execute positioned as @n[distance=..30,tag=wardenrw.warden.target] run function wardenrw:entity/warden/behaviour/sonic_stomp/check

execute summon item_display run function wardenrw:vfx/sculk_shockwave/setup {scale:4,facing:no}
execute summon item_display run function wardenrw:vfx/sculk_shockwave/setup {scale:3,facing:facing}
playsound entity.warden.death ambient @a ~ ~ ~ 2 2 0
playsound entity.warden.death ambient @a ~ ~ ~ 2 1.5 0

tag @s add wardenrw.warden.falling
attribute @s gravity modifier add wardenrw:gravity 1 add_multiplied_base