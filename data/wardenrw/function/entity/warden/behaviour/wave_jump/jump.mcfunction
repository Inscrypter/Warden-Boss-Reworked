# summon the temporary entity
execute facing entity @n[distance=..30,tag=wardenrw.warden.target] feet rotated ~ 0 positioned ^ ^1 ^3 run summon marker ~ ~ ~ {Tags:["wardenrw.direction"]}

particle dust_pillar{block_state:sculk} ~ ~ ~ 2 0.1 2 0.1 50 normal @a[distance=..64]
particle poof ~ ~ ~ 2 0.1 2 0.1 50 normal @a[distance=..64]
particle flash{color:[0,0.5,0.5,1]} ^ ^ ^ 0 0 0 0.5 1 normal @a[distance=..64]
playsound entity.breeze.jump ambient @a ~ ~ ~ 3 0.5 0
playsound entity.breeze.jump ambient @a ~ ~ ~ 3 0.75 0
playsound entity.warden.attack_impact ambient @a ~ ~ ~ 3 0.75 0
playsound entity.warden.attack_impact ambient @a ~ ~ ~ 3 0.5 0
execute summon item_display run function wardenrw:vfx/sculk_shockwave/setup {scale:4,facing:no}

# get the coordinates of the player and the entity
execute store result score #playerX wardenrw.pos run data get entity @s Pos[0] 1000
execute store result score #playerY wardenrw.pos run data get entity @s Pos[1] 1000
execute store result score #playerZ wardenrw.pos run data get entity @s Pos[2] 1000
execute store result score #targetX wardenrw.pos as @e[type=marker,tag=wardenrw.direction,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY wardenrw.pos as @e[type=marker,tag=wardenrw.direction,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ wardenrw.pos as @e[type=marker,tag=wardenrw.direction,limit=1] run data get entity @s Pos[2] 1000

execute facing entity @n[distance=..30,tag=wardenrw.warden.target] feet rotated ~ 0 positioned ^ ^ ^.1 summon item_display run function wardenrw:entity/warden/behaviour/projectile/sculk_wave/setup
execute facing entity @n[distance=..30,tag=wardenrw.warden.target] feet rotated ~30 0 positioned ^ ^ ^.1 summon item_display run function wardenrw:entity/warden/behaviour/projectile/sculk_wave/setup
execute facing entity @n[distance=..30,tag=wardenrw.warden.target] feet rotated ~-30 0 positioned ^ ^ ^.1 summon item_display run function wardenrw:entity/warden/behaviour/projectile/sculk_wave/setup

# do the math
scoreboard players operation #targetX wardenrw.pos -= #playerX wardenrw.pos
scoreboard players operation #targetY wardenrw.pos -= #playerY wardenrw.pos
scoreboard players operation #targetZ wardenrw.pos -= #playerZ wardenrw.pos

# apply motion to projectile
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #targetX wardenrw.pos
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #targetY wardenrw.pos
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #targetZ wardenrw.pos

# clean up, ready for the next player
kill @e[tag=wardenrw.direction]
