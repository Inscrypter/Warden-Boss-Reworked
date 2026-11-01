tp @s ~ ~ ~
execute summon item_display run function wardenrw:vfx/sculk_shockwave/setup {scale:4,facing:no}
execute summon item_display run function wardenrw:vfx/sculk_shockwave/setup {scale:3,facing:facing}
playsound entity.warden.death ambient @a ~ ~ ~ 2 2 0
playsound entity.warden.death ambient @a ~ ~ ~ 2 1.5 0