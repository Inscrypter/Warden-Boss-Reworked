execute unless score @s wardenrw.item.jawrender.cooldown.secondary matches 0.. run scoreboard players set @s wardenrw.item.jawrender.cooldown.secondary 0
execute if score @s wardenrw.item.jawrender.cooldown.secondary matches 1.. run scoreboard players remove @s wardenrw.item.jawrender.cooldown.secondary 1

execute if score @s wardenrw.item.jawrender.cooldown.secondary matches 1 anchored eyes positioned ^ ^ ^1 run particle flash{color:[0,0.4,0.4,1]} ~ ~ ~ 0.0 0.0 0.0 0 1 force @s
execute if score @s wardenrw.item.jawrender.cooldown.secondary matches 1 run playsound entity.warden.attack_impact ambient @s ~ ~ ~ 1 2 0

execute unless score @s wardenrw.item.jawrender.id matches 1.. run execute store result score @s wardenrw.item.jawrender.id store result score #this wardenrw.item.jawrender.id run scoreboard players add #new wardenrw.item.jawrender.id 1