scoreboard players set math1 wardenrw.math.temp 100
scoreboard players operation math1 wardenrw.math.temp *= @s wardenrw.mp_tier
scoreboard players operation math1 wardenrw.math.temp += @s wardenrw.additional_mp
scoreboard players operation @s wardenrw.max_mp = math1 wardenrw.math.temp