scoreboard players remove @s wardenrw.slowcast.duration 1
scoreboard players operation #this wardenrw.item.riftcaller.id = @s wardenrw.item.riftcaller.id
#particle sonic_boom ~ ~ ~ 0.0 0.0 0.0 0 1 normal @a[distance=..64]
execute if score @s wardenrw.slowcast.duration matches 11.. run particle sculk_soul ~ ~0.1 ~ 0.5 0.1 0.5 0.01 2 normal @a[distance=..64]

#execute if score @s wardenrw.slowcast.duration matches 10 summon item_display run function wardenrw:vfx/sculk_shockwave/setup {scale:2,facing:no}
execute if score @s wardenrw.slowcast.duration matches 10 run playsound entity.warden.sonic_boom ambient @a ~ ~ ~ 1 0.75 0
execute if score @s wardenrw.slowcast.duration matches ..10 run function wardenrw:item/weapon/magic/riftcaller/sonic_wave/sonic_pillar/explode

execute unless score @s wardenrw.slowcast.duration matches 1.. run kill