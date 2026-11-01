scoreboard players operation math1 wardenrw.math.temp = @s wardenrw.entity.timer
scoreboard players set math2 wardenrw.math.temp 50
execute as @s[tag=wardenrw.warden.phase_2] run scoreboard players set math2 wardenrw.math.temp 39
scoreboard players operation math1 wardenrw.math.temp %= math2 wardenrw.math.temp
execute if score @s wardenrw.entity.timer matches 260.. if score math1 wardenrw.math.temp matches 0 run function wardenrw:entity/warden/behaviour/wave_jump/jump

effect give @s slowness 1 1 true
effect give @s resistance 1 3 true
execute if score @s wardenrw.entity.timer matches 240..260 run particle scrape ~ ~ ~ 0.5 0.1 0.5 0 2 force @a[distance=..64]

execute as @s[tag=!wardenrw.warden.phase_2] if score @s wardenrw.entity.timer matches 480.. run scoreboard players set @s wardenrw.entity.timer 1
execute as @s[tag=wardenrw.warden.phase_2] if score @s wardenrw.entity.timer matches 480.. run scoreboard players set @s wardenrw.entity.timer 121