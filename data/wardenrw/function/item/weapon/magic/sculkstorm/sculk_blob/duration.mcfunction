scoreboard players remove @s wardenrw.slowcast.duration 1
scoreboard players operation #this wardenrw.item.sculk_blob.id = @s wardenrw.item.sculk_blob.id
particle sculk_soul ~ ~ ~ 0.25 0.25 0.25 0.05 1 force @a[distance=..64]
particle sculk_charge_pop ~ ~ ~ 0.25 0.25 0.25 0.01 10 force @a[distance=..64]
execute as @s[tag=!wardenrw.on_ground] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=#wardenrw:mobs_player,predicate=!wardenrw:id/item/sculk_blob] run function wardenrw:magic/damage/calculate {damage:7,type:"wardenrw:sculk_blob",attacker:"@p[predicate=wardenrw:id/item/sculk_blob]"}
execute as @s[tag=wardenrw.on_ground] positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=#wardenrw:mobs_player,predicate=!wardenrw:id/item/sculk_blob] run function wardenrw:magic/damage/calculate {damage:3.5,type:"wardenrw:sculk_blob",attacker:"@p[predicate=wardenrw:id/item/sculk_blob]"}
execute as @s[tag=wardenrw.on_ground] run data modify entity @s Motion set value [0,0,0]
execute as @s[tag=!wardenrw.on_ground] if predicate wardenrw:action/on_ground run function wardenrw:item/weapon/magic/sculkstorm/sculk_blob/land

execute unless score @s wardenrw.slowcast.duration matches 1.. run kill