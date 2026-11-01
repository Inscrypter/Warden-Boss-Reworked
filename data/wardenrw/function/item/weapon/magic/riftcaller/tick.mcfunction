execute unless score @s wardenrw.item.riftcaller.cooldown matches 0.. run scoreboard players set @s wardenrw.item.riftcaller.cooldown 0
execute if score @s wardenrw.item.riftcaller.cooldown matches 1.. run scoreboard players remove @s wardenrw.item.riftcaller.cooldown 1

execute unless score @s wardenrw.item.riftcaller.id matches 1.. run execute store result score @s wardenrw.item.riftcaller.id store result score #this wardenrw.item.riftcaller.id run scoreboard players add #new wardenrw.item.riftcaller.id 1