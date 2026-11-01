tag @s add wardenrw.sculk_shockwave
$tag @s add wardenrw.sculk_shockwave.sound.$(sound)

rotate @s ~ -90
data modify entity @s teleport_duration set value 1
data modify entity @s interpolation_duration set value 1
data modify entity @s item set value {id:sculk,count:1}
data modify entity @s transformation.scale set value [1.8,1.8,1.8]
data merge entity @s {brightness:{block:10,sky:10}}
data modify entity @s billboard set value fixed

scoreboard players set @s wardenrw.slowcast.duration 100
scoreboard players set @s wardenrw.slowcast.steps 8
scoreboard players set @s wardenrw.math.temp 0
