tag @s add wardenrw.slowcast
tag @s add wardenrw.echoing_totem.sculk_soul

scoreboard players operation @s wardenrw.item.echoing_totem.sculk_soul = #this wardenrw.item.echoing_totem.sculk_soul
rotate @s ~ ~

scoreboard players set @s wardenrw.slowcast.steps 5
execute store result score @s wardenrw.slowcast.duration run random value 60..80

function wardenrw:item/accessory/echoing_totem/sculk_soul/temp_tick