execute summon item_display run function wardenrw:vfx/sculk_shockwave/setup {scale:2,facing:no}
playsound block.sculk.break ambient @a ~ ~ ~ 2 2 0
playsound block.sculk.break ambient @a ~ ~ ~ 2 1.5 0
playsound block.sculk.break ambient @a ~ ~ ~ 2 1 0
playsound block.sculk.break ambient @a ~ ~ ~ 2 0.5 0

tag @s add wardenrw.on_ground
