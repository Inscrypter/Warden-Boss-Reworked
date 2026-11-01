summon marker ~ ~ ~ {Tags:[wardenrw.sculkstorm_rain_marker]}

#random x and y rain rotation
execute store result storage wardenrw:temp random.x int 1 run random value -40..40
execute store result storage wardenrw:temp random.y int 1 run random value -40..40

# random x z spawn position
execute store result storage wardenrw:temp random.a int 1 run random value -2..2
execute store result storage wardenrw:temp random.b int 1 run random value -2..2

# changes the y position depends on the height of the ceiling
scoreboard players set math1 wardenrw.math.temp 0
execute positioned as @n[tag=wardenrw.sculkstorm_rain_marker] run function wardenrw:item/weapon/magic/sculkstorm/rain/height
scoreboard players set math2 wardenrw.math.temp 1
execute store result storage wardenrw:temp height.b int 1 run scoreboard players get math1 wardenrw.math.temp
execute store result storage wardenrw:temp height.a int 1 run scoreboard players operation math1 wardenrw.math.temp -= math2 wardenrw.math.temp

function wardenrw:item/weapon/magic/sculkstorm/rain/random_height with storage wardenrw:temp height

# vfx size stuff
execute store result storage wardenrw:temp random.scale int 1 run random value 2..3

# summon the projectile
function wardenrw:item/weapon/magic/sculkstorm/rain/shoot with storage wardenrw:temp random

# misc
scoreboard players set @s wardenrw.item.sculkstorm.cooldown.primary 3
function wardenrw:magic/mana/consume_mp {mp:2}
kill @e[tag=wardenrw.sculkstorm_rain_marker]
