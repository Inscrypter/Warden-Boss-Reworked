execute as @e[tag=wardenrw.echoing_totem.sculk_soul,scores={wardenrw.slowcast.duration=1..}] at @s run function wardenrw:item/accessory/echoing_totem/sculk_soul/duration

execute if entity @n[tag=wardenrw.echoing_totem.sculk_soul] run schedule function wardenrw:item/accessory/echoing_totem/sculk_soul/temp_tick 1t
