scoreboard players operation math1 wardenrw.math.temp = @s wardenrw.entity.timer
scoreboard players set math2 wardenrw.math.temp 29
scoreboard players operation math1 wardenrw.math.temp %= math2 wardenrw.math.temp
execute if score @s wardenrw.entity.timer matches 300.. if score math1 wardenrw.math.temp matches 0 at @e[type=#wardenrw:mobs,predicate=wardenrw:id/entity/warden,type=!warden] positioned ~ ~-0.5 ~ summon marker run function wardenrw:entity/warden/behaviour/projectile/sculk_jaw/setup
execute if score @s wardenrw.entity.timer matches 300.. if score math1 wardenrw.math.temp matches 0 at @a[predicate=wardenrw:id/entity/warden,gamemode=survival] positioned ~ ~-0.5 ~ summon marker run function wardenrw:entity/warden/behaviour/projectile/sculk_jaw/setup

effect give @s slowness 1 5 true
effect give @s resistance 1 4 true
execute if score @s wardenrw.entity.timer matches 240.. run particle sculk_charge_pop ~ ~ ~ 0.25 0.25 0.25 0.1 1 force @a[distance=..64]
execute if score @s wardenrw.entity.timer matches 243 run function wardenrw:entity/warden/behaviour/jaw_ambush/start

scoreboard players set @s wardenrw.entity.warden.attack_count 0
execute if score @s wardenrw.entity.timer matches 600.. run scoreboard players set @s wardenrw.entity.timer 121