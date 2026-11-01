scoreboard players operation math1 wardenrw.math.temp = @s wardenrw.entity.timer
scoreboard players set math2 wardenrw.math.temp 3
execute as @s[tag=wardenrw.warden.phase_2] run scoreboard players set math2 wardenrw.math.temp 2
scoreboard players operation math1 wardenrw.math.temp %= math2 wardenrw.math.temp
execute store result storage wardenrw:temp random.x int 1 run random value -3..3
execute store result storage wardenrw:temp random.z int 1 run random value -3..3
execute if score @s wardenrw.entity.timer matches 260.. if score math1 wardenrw.math.temp matches 0 rotated ~ 0 positioned ^ ^1.5 ^0.5 run function wardenrw:entity/warden/behaviour/sculk_barrage/shoot with storage wardenrw:temp random

effect give @s slowness 1 0 true
effect give @s resistance 1 3 true
execute if score @s wardenrw.entity.timer matches 240..260 rotated ~ 0 positioned ^ ^1.5 ^0.5 run particle sculk_charge_pop ~ ~ ~ 0.25 0.25 0.25 0.1 1 force @a[distance=..64]

execute as @s[tag=!wardenrw.warden.phase_2] if score @s wardenrw.entity.timer matches 360.. run scoreboard players set @s wardenrw.entity.timer 1
execute as @s[tag=wardenrw.warden.phase_2] if score @s wardenrw.entity.timer matches 480.. run scoreboard players set @s wardenrw.entity.timer 121