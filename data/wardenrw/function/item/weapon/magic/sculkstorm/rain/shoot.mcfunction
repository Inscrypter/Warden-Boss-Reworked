# summon the projectile
scoreboard players operation #this wardenrw.item.sculk_blob.id = @s wardenrw.item.sculk_blob.id
$execute at @s positioned as @n[tag=wardenrw.sculkstorm_rain_marker] positioned ~$(a) ~$(c) ~$(b) summon armor_stand run function wardenrw:item/weapon/magic/sculkstorm/sculk_blob_rain/setup

# summon direction marker
$execute at @s positioned as @n[tag=wardenrw.sculkstorm_rain_marker] positioned ~$(a) ~$(c) ~$(b) facing entity @n[tag=wardenrw.sculkstorm_rain_marker] feet rotated ~$(x) ~$(y) positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["wardenrw.direction"]}

# vfx stuff
$execute at @s positioned as @n[tag=wardenrw.sculkstorm_rain_marker] positioned ~$(a) ~$(c) ~$(b) facing entity @n[tag=wardenrw.sculkstorm_rain_marker] feet rotated ~$(x) ~$(y) positioned ^ ^ ^ summon item_display run function wardenrw:item/weapon/magic/sculkstorm/rain/vfx/setup {scale:$(scale)}

# get the coordinates of the projectile and the direction marker
execute store result score #playerX wardenrw.pos as @e[type=armor_stand,tag=wardenrw.projectile,limit=1] run data get entity @s Pos[0] 1000
execute store result score #playerY wardenrw.pos as @e[type=armor_stand,tag=wardenrw.projectile,limit=1] run data get entity @s Pos[1] 1000
execute store result score #playerZ wardenrw.pos as @e[type=armor_stand,tag=wardenrw.projectile,limit=1] run data get entity @s Pos[2] 1000
execute store result score #targetX wardenrw.pos as @e[type=marker,tag=wardenrw.direction,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY wardenrw.pos as @e[type=marker,tag=wardenrw.direction,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ wardenrw.pos as @e[type=marker,tag=wardenrw.direction,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX wardenrw.pos -= #playerX wardenrw.pos
scoreboard players operation #targetY wardenrw.pos -= #playerY wardenrw.pos
scoreboard players operation #targetZ wardenrw.pos -= #playerZ wardenrw.pos

# apply motion to projectile
execute store result entity @n[tag=wardenrw.sculk_blob.secondary,tag=wardenrw.projectile,type=armor_stand] Motion[0] double 0.001 run scoreboard players get #targetX wardenrw.pos
execute store result entity @n[tag=wardenrw.sculk_blob.secondary,tag=wardenrw.projectile,type=armor_stand] Motion[1] double 0.001 run scoreboard players get #targetY wardenrw.pos
execute store result entity @n[tag=wardenrw.sculk_blob.secondary,tag=wardenrw.projectile,type=armor_stand] Motion[2] double 0.001 run scoreboard players get #targetZ wardenrw.pos

# clean up
kill @e[tag=wardenrw.direction]

tag @e[tag=wardenrw.projectile] remove wardenrw.projectile
