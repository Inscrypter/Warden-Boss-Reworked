data modify storage wardenrw:magic crit set value 0

$data modify storage wardenrw:magic temp_damage set value $(damage)
execute store result storage wardenrw:magic temp_damage float 1000 run data get storage wardenrw:magic temp_damage
execute store result score damage wardenrw.math.temp run data get storage wardenrw:magic temp_damage

$data modify storage wardenrw:magic modifier_damage set value $(damage)
execute store result storage wardenrw:magic modifier_damage float 1000 run data get storage wardenrw:magic modifier_damage
execute store result score modifier_damage wardenrw.math.temp run data get storage wardenrw:magic modifier_damage
$scoreboard players operation modifier wardenrw.math.temp = $(attacker) wardenrw.magic_damage_modifier

scoreboard players set math1 wardenrw.math.temp 100
scoreboard players operation modifier_damage wardenrw.math.temp *= modifier wardenrw.math.temp
scoreboard players operation modifier_damage wardenrw.math.temp /= math1 wardenrw.math.temp
scoreboard players operation damage wardenrw.math.temp += modifier_damage wardenrw.math.temp

scoreboard players set crit wardenrw.math.temp 2
execute store result score random wardenrw.math.temp run random value 1..100
$execute if score random wardenrw.math.temp <= $(attacker) wardenrw.magic_crit_chance run scoreboard players operation damage wardenrw.math.temp *= crit wardenrw.math.temp
$execute if score random wardenrw.math.temp <= $(attacker) wardenrw.magic_crit_chance run data modify storage wardenrw:magic crit set value 1
execute store result storage wardenrw:magic damage float 0.001 run scoreboard players get damage wardenrw.math.temp
$data modify storage wardenrw:magic type set value "$(type)"
$data modify storage wardenrw:magic attacker set value "$(attacker)"

function wardenrw:magic/damage/damage with storage wardenrw:magic