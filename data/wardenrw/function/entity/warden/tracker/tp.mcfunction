scoreboard players operation #this wardenrw.entity.warden.id = @s wardenrw.entity.warden.id
execute store success score #exist wardenrw.entity.warden.id run tp @s @e[type=warden,tag=wardenrw.warden,predicate=wardenrw:id/entity/warden,limit=1]
execute if score #exist wardenrw.entity.warden.id matches 0 run function wardenrw:entity/warden/death

execute if entity @n[type=warden,tag=wardenrw.warden,predicate=wardenrw:id/entity/warden,nbt={Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:0L}}}}] run function wardenrw:entity/warden/despawn
