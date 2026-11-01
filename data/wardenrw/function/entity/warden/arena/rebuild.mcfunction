execute at @s store success score wardenrw.warden.arena wardenrw.math.temp run clone ~-15 ~-2 ~-15 ~15 ~-1 ~15 ~-15 ~-2 ~-15 filtered #wardenrw:non_solid force
execute if score wardenrw.warden.arena wardenrw.math.temp matches 1 run fill ~-15 ~-2 ~-15 ~15 ~-1 ~15 sculk replace #wardenrw:non_solid

execute at @s store success score wardenrw.warden.arena wardenrw.math.temp run clone ~-15 ~30 ~-15 ~15 ~30 ~15 ~-15 ~30 ~-15 filtered #wardenrw:non_solid force
execute if score wardenrw.warden.arena wardenrw.math.temp matches 1 run fill ~-15 ~30 ~-15 ~15 ~30 ~15 sculk replace #wardenrw:non_solid
execute at @s store success score wardenrw.warden.arena wardenrw.math.temp run clone ~-15 ~31 ~-15 ~15 ~31 ~15 ~-15 ~31 ~-15 filtered #wardenrw:non_solid force
execute if score wardenrw.warden.arena wardenrw.math.temp matches 1 run fill ~-15 ~31 ~-15 ~15 ~31 ~15 barrier replace #wardenrw:non_solid

execute at @s store success score wardenrw.warden.arena wardenrw.math.temp run clone ~-17 ~-2 ~-17 ~17 ~31 ~-16 ~-17 ~-2 ~-17 filtered #wardenrw:non_solid force
execute if score wardenrw.warden.arena wardenrw.math.temp matches 1 run fill ~-17 ~-2 ~-17 ~17 ~31 ~-16 sculk replace #wardenrw:non_solid

execute at @s store success score wardenrw.warden.arena wardenrw.math.temp run clone ~-17 ~-2 ~-17 ~-16 ~31 ~17 ~-17 ~-2 ~-17 filtered #wardenrw:non_solid force
execute if score wardenrw.warden.arena wardenrw.math.temp matches 1 run fill ~-17 ~-2 ~-17 ~-16 ~31 ~17 sculk replace #wardenrw:non_solid

execute at @s store success score wardenrw.warden.arena wardenrw.math.temp run clone ~17 ~-2 ~17 ~16 ~31 ~-17 ~17 ~-2 ~17 filtered #wardenrw:non_solid force
execute if score wardenrw.warden.arena wardenrw.math.temp matches 1 run fill ~17 ~-2 ~17 ~16 ~31 ~-17 sculk replace #wardenrw:non_solid

execute at @s store success score wardenrw.warden.arena wardenrw.math.temp run clone ~17 ~-2 ~17 ~-17 ~31 ~16 ~17 ~-2 ~17 filtered #wardenrw:non_solid force
execute if score wardenrw.warden.arena wardenrw.math.temp matches 1 run fill ~17 ~-2 ~17 ~-17 ~31 ~16 sculk replace #wardenrw:non_solid

execute positioned ~-17 ~-2 ~-17 as @e[type=#wardenrw:mobs,dx=33,dy=32,dz=33] positioned ~17 ~2 ~17 run scoreboard players operation @s wardenrw.entity.warden.id = @n wardenrw.entity.warden.id
execute positioned ~-17 ~-2 ~-17 as @a[dx=33,dy=32,dz=33,gamemode=survival] positioned ~17 ~2 ~17 run scoreboard players operation @s wardenrw.entity.warden.id = @n wardenrw.entity.warden.id

execute as @e[type=#wardenrw:mobs,type=!warden,predicate=wardenrw:id/entity/warden,distance=..50] at @s positioned ~-17 ~-31 ~-17 unless entity @n[tag=wardenrw.warden.arena,predicate=wardenrw:id/entity/warden,dx=33,dy=32,dz=33] run function wardenrw:entity/warden/arena/punish
execute as @a[predicate=wardenrw:id/entity/warden,distance=..50,gamemode=survival] at @s positioned ~-17 ~-31 ~-17 unless entity @n[tag=wardenrw.warden.arena,predicate=wardenrw:id/entity/warden,dx=33,dy=32,dz=33] run function wardenrw:entity/warden/arena/punish

execute at @s run fill ~-15 ~ ~-15 ~15 ~1 ~15 light[level=1] replace air
