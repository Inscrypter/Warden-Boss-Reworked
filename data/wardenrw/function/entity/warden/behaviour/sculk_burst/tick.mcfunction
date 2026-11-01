scoreboard players operation math1 wardenrw.math.temp = @s wardenrw.entity.timer
scoreboard players set math2 wardenrw.math.temp 30

scoreboard players operation math1 wardenrw.math.temp %= math2 wardenrw.math.temp
execute if score @s wardenrw.entity.timer matches 260.. if score math1 wardenrw.math.temp matches 0 run function wardenrw:entity/warden/behaviour/sculk_burst/burst

effect give @s slowness 1 2 true
effect give @s resistance 1 3 true
execute if score @s wardenrw.entity.timer matches 240..260 rotated ~ 0 positioned ^ ^1.5 ^0.5 run particle sculk_charge_pop ~ ~ ~ 0.25 0.25 0.25 0 2 force @a[distance=..64]

execute as @s[tag=!wardenrw.warden.phase_2] if score @s wardenrw.entity.timer matches 360.. run scoreboard players set @s wardenrw.entity.timer 1
execute as @s[tag=wardenrw.warden.phase_2] if score @s wardenrw.entity.timer matches 420.. run scoreboard players set @s wardenrw.entity.timer 121