execute unless score @s wardenrw.mp_regenerate_timer matches 0.. run scoreboard players set @s wardenrw.mp_regenerate_timer 0
scoreboard players add @s wardenrw.mp_regenerate_timer 1
execute if score @s wardenrw.mp_regenerate_timer matches 89.. run scoreboard players set @s wardenrw.mp_regenerate_timer 2

execute if score @s wardenrw.mp_tier matches 1 run scoreboard players operation math1 wardenrw.math.temp = @s wardenrw.mp_regenerate_timer
execute if score @s wardenrw.mp_tier matches 1 run scoreboard players set math2 wardenrw.math.temp 5
execute if score @s wardenrw.mp_tier matches 1 run scoreboard players operation math1 wardenrw.math.temp %= math2 wardenrw.math.temp

execute if score math1 wardenrw.math.temp matches 0 if score @s wardenrw.mp_tier matches 1 run function wardenrw:magic/mana/refill_mp {mp:1}