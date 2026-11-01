scoreboard players remove amount wardenrw.math.temp 1
$execute positioned ~ ~2 ~ rotated $(x) $(y) positioned ^ ^ ^ summon marker run function wardenrw:item/accessory/echoing_totem/sculk_soul/setup
execute store result storage wardenrw:temp random.x int 1 run random value -180..180
execute store result storage wardenrw:temp random.y int 1 run random value -90..90
particle sculk_soul ~ ~1 ~ 0 0 0 0 5 normal @a[distance=..64]
playsound entity.warden.attack_impact ambient @a[distance=..64] ~ ~ ~ 1 1 0
execute if score amount wardenrw.math.temp matches 1.. run function wardenrw:item/accessory/echoing_totem/release_sculk_soul with storage wardenrw:temp random