scoreboard players add math1 wardenrw.math.temp 1
execute store result storage wardenrw:temp random.c int 1 run scoreboard players get math1 wardenrw.math.temp

# if there's no block at that height then increase the height till it reaches 10 blocks or it detects a block blocking the spawn pos
execute if block ~ ~1 ~ #wardenrw:non_solid if score math1 wardenrw.math.temp matches ..9 positioned ~ ~1 ~ run function wardenrw:item/weapon/magic/sculkstorm/rain/height