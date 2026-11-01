tag @s add wardenrw.sculk_wave.jawrender

scoreboard players operation @s wardenrw.item.jawrender.id = @p wardenrw.item.jawrender.id
rotate @s ~ -90
data modify entity @s teleport_duration set value 1
data modify entity @s interpolation_duration set value 1
data modify entity @s item set value {id:sculk,count:1}
data modify entity @s transformation.scale set value [1.8,1.8,1.8]
data merge entity @s {brightness:{block:14,sky:14}}
data modify entity @s billboard set value fixed

scoreboard players set @s wardenrw.slowcast.duration 50
scoreboard players set @s wardenrw.slowcast.steps 9
scoreboard players set @s wardenrw.math.temp 0
