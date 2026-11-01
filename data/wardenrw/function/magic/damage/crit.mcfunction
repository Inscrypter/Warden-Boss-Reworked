execute unless score @s wardenrw.magic_crit_chance.add matches 0.. run scoreboard players set @s wardenrw.magic_crit_chance.add 0
execute unless score @s wardenrw.magic_damage_modifier matches 0.. run scoreboard players set @s wardenrw.magic_damage_modifier 0

scoreboard players set math1 wardenrw.math.temp 4
scoreboard players operation math1 wardenrw.math.temp += @s wardenrw.magic_crit_chance.add
scoreboard players operation @s wardenrw.magic_crit_chance = math1 wardenrw.math.temp