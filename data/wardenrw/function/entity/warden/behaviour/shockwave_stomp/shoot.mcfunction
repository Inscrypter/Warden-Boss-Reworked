# summon the temporary entity
$execute at @s positioned ~ ~14 ~ run summon marker ~$(x) ~ ~$(z) {Tags:["wardenrw.direction"]}


# get the coordinates of the player and the entity
execute store result score #playerX wardenrw.pos run data get entity @s Pos[0] 1000
execute store result score #playerY wardenrw.pos run data get entity @s Pos[1] 1000
execute store result score #playerZ wardenrw.pos run data get entity @s Pos[2] 1000
execute store result score #targetX wardenrw.pos as @e[type=marker,tag=wardenrw.direction,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY wardenrw.pos as @e[type=marker,tag=wardenrw.direction,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ wardenrw.pos as @e[type=marker,tag=wardenrw.direction,limit=1] run data get entity @s Pos[2] 1000

execute summon armor_stand run function wardenrw:entity/warden/behaviour/projectile/sculk_blob/setup

# do the math
scoreboard players operation #targetX wardenrw.pos -= #playerX wardenrw.pos
scoreboard players operation #targetY wardenrw.pos -= #playerY wardenrw.pos
scoreboard players operation #targetZ wardenrw.pos -= #playerZ wardenrw.pos

# apply motion to projectile
execute store result entity @n[tag=wardenrw.sculk_blob,tag=wardenrw.projectile,type=armor_stand] Motion[0] double 0.00014 run scoreboard players get #targetX wardenrw.pos
execute store result entity @n[tag=wardenrw.sculk_blob,tag=wardenrw.projectile,type=armor_stand] Motion[1] double 0.00014 run scoreboard players get #targetY wardenrw.pos
execute store result entity @n[tag=wardenrw.sculk_blob,tag=wardenrw.projectile,type=armor_stand] Motion[2] double 0.00014 run scoreboard players get #targetZ wardenrw.pos

# clean up, ready for the next player
kill @e[tag=wardenrw.direction]
tag @e[tag=wardenrw.projectile] remove wardenrw.projectile
