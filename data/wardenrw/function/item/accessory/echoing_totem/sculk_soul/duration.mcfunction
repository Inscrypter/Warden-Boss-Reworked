scoreboard players remove @s wardenrw.slowcast.duration 1

scoreboard players operation #this wardenrw.item.echoing_totem.sculk_soul = @s wardenrw.item.echoing_totem.sculk_soul
scoreboard players operation steps wardenrw.slowcast.temp = @s wardenrw.slowcast.steps

execute positioned ^ ^ ^.1 run function wardenrw:item/accessory/echoing_totem/sculk_soul/step

execute if score @s wardenrw.slowcast.duration matches 41.. run particle sculk_charge_pop ~ ~ ~ 0.05 0.05 0.05 0.05 3 force @a[distance=..64]
execute if score @s wardenrw.slowcast.duration matches 41.. if score @s wardenrw.slowcast.steps matches 2.. run scoreboard players remove @s wardenrw.slowcast.steps 1
execute if score @s wardenrw.slowcast.duration matches 40 run playsound entity.warden.tendril_clicks ambient @a ~ ~ ~ 2 2 0
execute if score @s wardenrw.slowcast.duration matches ..40 if score @s wardenrw.slowcast.steps matches ..19 if entity @n[predicate=wardenrw:id/item/echoing_totem_target,type=#wardenrw:mobs_player] run scoreboard players add @s wardenrw.slowcast.steps 2
execute if score @s wardenrw.slowcast.duration matches ..40 if score @s wardenrw.slowcast.steps matches 2.. unless entity @n[predicate=wardenrw:id/item/echoing_totem_target,type=#wardenrw:mobs_player] run scoreboard players remove @s wardenrw.slowcast.steps 1

execute unless score @s wardenrw.slowcast.duration matches 1.. run kill