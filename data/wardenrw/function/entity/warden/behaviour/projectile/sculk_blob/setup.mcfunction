tag @s add wardenrw.sculk_blob
tag @s add wardenrw.projectile

data modify entity @s Invulnerable set value true
data modify entity @s Invisible set value true
#data modify entity @s Marker set value true
attribute @s gravity base set 0.12

playsound block.sculk.place ambient @a ~ ~ ~ 2 1.5 0
playsound block.sculk.place ambient @a ~ ~ ~ 2 0.5 0
particle sculk_soul ~ ~ ~ 0.0 0.0 0.0 0.05 2 normal @a[distance=..64]

scoreboard players set @s wardenrw.slowcast.duration 240

