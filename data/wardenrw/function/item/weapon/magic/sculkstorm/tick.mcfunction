execute unless score @s wardenrw.item.sculkstorm.cooldown.primary matches 0.. run scoreboard players set @s wardenrw.item.sculkstorm.cooldown.primary 0
execute unless score @s wardenrw.item.sculkstorm.cooldown.secondary matches 0.. run scoreboard players set @s wardenrw.item.sculkstorm.cooldown.secondary 0
execute if score @s wardenrw.item.sculkstorm.cooldown.primary matches 1.. run scoreboard players remove @s wardenrw.item.sculkstorm.cooldown.primary 1
execute if score @s wardenrw.item.sculkstorm.cooldown.secondary matches 1.. run scoreboard players remove @s wardenrw.item.sculkstorm.cooldown.secondary 1

execute unless score @s wardenrw.item.sculk_blob.id matches 1.. run execute store result score @s wardenrw.item.sculk_blob.id store result score #this wardenrw.item.sculk_blob.id run scoreboard players add #new wardenrw.item.sculk_blob.id 1