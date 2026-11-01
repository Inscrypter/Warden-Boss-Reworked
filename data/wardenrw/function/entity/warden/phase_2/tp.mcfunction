execute store result score math1 wardenrw.math.temp run data get entity @s Pos[1]
$scoreboard players set math2 wardenrw.math.temp $(y)
execute if score math1 wardenrw.math.temp < math2 wardenrw.math.temp run function wardenrw:entity/warden/phase_2/spread with storage wardenrw:entity warden.pos
