tag @s add wardenrw.sculk_jaw.jawrender

scoreboard players operation @s wardenrw.item.jawrender.id = @p wardenrw.item.jawrender.id
rotate @s 0 0
execute store result score random wardenrw.math.temp run random value 1..2
execute if score random wardenrw.math.temp matches 1 run tag @s add wardenrw.sculk_jaw.1
execute if score random wardenrw.math.temp matches 2 run tag @s add wardenrw.sculk_jaw.2

scoreboard players set @s wardenrw.slowcast.duration 15

playsound entity.warden.tendril_clicks ambient @a ~ ~ ~ 2 2 0
playsound entity.warden.tendril_clicks ambient @a ~ ~ ~ 2 1.5 0

scoreboard players set @s wardenrw.math.temp 1