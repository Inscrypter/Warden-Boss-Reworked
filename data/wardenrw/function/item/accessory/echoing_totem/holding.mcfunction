execute unless score @s wardenrw.item.echoing_totem.stored_MP matches 0.. run scoreboard players set @s wardenrw.item.echoing_totem.stored_MP 0
execute unless score @s wardenrw.item.echoing_totem.regen_cd matches 0.. run scoreboard players set @s wardenrw.item.echoing_totem.regen_cd 0
execute if score @s wardenrw.item.echoing_totem.regen_cd matches 1.. run scoreboard players remove @s wardenrw.item.echoing_totem.regen_cd 1

execute if score @s wardenrw.item.echoing_totem.regen_cd matches 0 if score @s wardenrw.item.echoing_totem.stored_MP matches 25.. if score @s wardenrw.mp < @s wardenrw.max_mp run function wardenrw:item/accessory/echoing_totem/regen_mp

execute unless score @s wardenrw.item.echoing_totem.sculk_soul matches 1.. run execute store result score @s wardenrw.item.echoing_totem.sculk_soul store result score #this wardenrw.item.echoing_totem.sculk_soul run scoreboard players add #new wardenrw.item.echoing_totem.sculk_soul 1