execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,type=#wardenrw:mobs_player,predicate=!wardenrw:id/item/riftcaller] run function wardenrw:magic/damage/calculate {damage:12,type:"sonic_boom",attacker:"@p[predicate=wardenrw:id/item/riftcaller]"}
particle sonic_boom ~ ~ ~ 0.0 0.0 0.0 0 1 force @a[distance=..64]
tp @s ~ ~1 ~