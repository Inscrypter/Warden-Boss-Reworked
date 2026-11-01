bossbar set wardenrw:warden players
playsound minecraft:entity.warden.death hostile @a[distance=..64] ~ ~ ~ 4 0.5 0.0
playsound minecraft:entity.warden.roar hostile @a[distance=..64] ~ ~ ~ 4 0.5 0.0
playsound minecraft:entity.warden.death hostile @a[distance=..64] ~ ~ ~ 4 1.5 0.0
playsound minecraft:entity.warden.roar hostile @a[distance=..64] ~ ~ ~ 4 1.5 0.0
playsound minecraft:entity.warden.death hostile @a[distance=..64] ~ ~ ~ 4 0.75 0.0
playsound minecraft:entity.warden.roar hostile @a[distance=..64] ~ ~ ~ 4 0.75 0.0
playsound minecraft:entity.warden.death hostile @a[distance=..64] ~ ~ ~ 4 1.25 0.0
playsound minecraft:entity.warden.roar hostile @a[distance=..64] ~ ~ ~ 4 1.25 0.0

particle sculk_soul ^ ^ ^ 0.0 0.0 0.0 1 100 normal @a[distance=..64]
particle trial_spawner_detection_ominous ^ ^ ^ 0.0 0.0 0.0 1 100 normal @a[distance=..64]
particle sonic_boom ^ ^ ^ 2 2 2 0 25 normal @a[distance=..64]
particle flash{color:[0,0.5,0.5,1]} ^ ^ ^ 4 4 4 0.5 25 normal @a[distance=..64]
tellraw @a {"color":"light_purple","translate":"entity.wardenrw.boss.defeated",with:[{text:"Warden"}]}

scoreboard players operation #this wardenrw.entity.warden.id = @s wardenrw.entity.warden.id
execute at @s as @a[gamemode=survival,predicate=wardenrw:id/entity/warden_hitter] run loot spawn ~ ~ ~ loot wardenrw:entity/warden_special
execute at @s as @a[gamemode=survival,predicate=wardenrw:id/entity/warden_hitter] unless score @s wardenrw.mp_tier matches 1.. run loot spawn ~ ~ ~ loot wardenrw:item/consumables/arcane_heart
execute as @n[tag=wardenrw.warden.arena,predicate=wardenrw:id/entity/warden] at @s run function wardenrw:entity/warden/arena/destroy
kill @s