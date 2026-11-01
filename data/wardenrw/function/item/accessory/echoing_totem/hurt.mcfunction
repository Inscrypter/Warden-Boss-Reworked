scoreboard players operation #this wardenrw.item.echoing_totem.sculk_soul = @s wardenrw.item.echoing_totem.sculk_soul
execute on attacker run scoreboard players operation @s wardenrw.item.echoing_totem.sculk_soul.target = @p[predicate=wardenrw:id/item/echoing_totem] wardenrw.item.echoing_totem.sculk_soul

scoreboard players set math1 wardenrw.math.temp 2
scoreboard players operation amount wardenrw.math.temp = @s wardenrw.item.echoing_totem.stored_MP
scoreboard players operation amount wardenrw.math.temp /= math1 wardenrw.math.temp
execute if score amount wardenrw.math.temp matches 25.. run scoreboard players operation @s wardenrw.item.echoing_totem.stored_MP -= amount wardenrw.math.temp
scoreboard players set math1 wardenrw.math.temp 25
scoreboard players operation amount wardenrw.math.temp /= math1 wardenrw.math.temp

execute store result storage wardenrw:temp random.x int 1 run random value 1..360
execute store result storage wardenrw:temp random.y int 1 run random value 1..360
execute if score amount wardenrw.math.temp matches 1.. run function wardenrw:item/accessory/echoing_totem/release_sculk_soul with storage wardenrw:temp random



advancement revoke @s only wardenrw:technical/action/entity_hurt/echoing_totem