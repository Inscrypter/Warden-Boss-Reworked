scoreboard players remove steps wardenrw.slowcast.temp 1

#
execute if score @s wardenrw.slowcast.duration matches ..40 as @n[dx=0,predicate=wardenrw:id/item/echoing_totem_target,type=#wardenrw:mobs_player,tag=!wardenrw.got_hit] positioned ~-.9 ~-.9 ~-.9 if entity @s[dx=0] positioned ~.9 ~.9 ~.9 run function wardenrw:item/accessory/echoing_totem/sculk_soul/hit
execute if score @s wardenrw.slowcast.duration matches ..40 run particle sculk_charge_pop ~ ~ ~ 0.1 0.1 0.1 0.1 3 force @a[distance=..64]
execute if score @s wardenrw.slowcast.duration matches ..40 if entity @n[tag=wardenrw.got_hit] run function wardenrw:item/accessory/echoing_totem/sculk_soul/kill

tp ~ ~ ~

execute if score @s wardenrw.slowcast.duration matches 41.. if score steps wardenrw.slowcast.temp matches 1.. positioned ^ ^ ^.1 run function wardenrw:item/accessory/echoing_totem/sculk_soul/step
execute if score @s wardenrw.slowcast.duration matches ..40 if score steps wardenrw.slowcast.temp matches 1.. facing entity @n[predicate=wardenrw:id/item/echoing_totem_target,type=#wardenrw:mobs_player] eyes positioned ^ ^ ^.1 run function wardenrw:item/accessory/echoing_totem/sculk_soul/step