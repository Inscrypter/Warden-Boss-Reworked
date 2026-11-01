execute rotated ~20 ~ positioned ^ ^ ^ summon item_display run function wardenrw:item/weapon/melee/jawrender/sculk_wave/setup
execute rotated ~ ~ positioned ^ ^ ^ summon item_display run function wardenrw:item/weapon/melee/jawrender/sculk_wave/setup
execute rotated ~-20 ~ positioned ^ ^ ^ summon item_display run function wardenrw:item/weapon/melee/jawrender/sculk_wave/setup
execute summon item_display run function wardenrw:vfx/sculk_shockwave/setup {scale:3,facing:no}
playsound entity.warden.death ambient @s ~ ~ ~ 1 2 0
scoreboard players set @s wardenrw.item.jawrender.cooldown.secondary 200