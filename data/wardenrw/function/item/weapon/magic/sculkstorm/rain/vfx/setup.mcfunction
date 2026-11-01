tag @s add wardenrw.vfx.sculk_shockwave.sculkstorm

rotate @s ~ ~
data modify entity @s item set value {id:stick,components:{item_model:"wardenrw:vfx/sculk_shockwave/1"},count:1}
$data modify entity @s transformation.scale set value [$(scale),$(scale),0.5]
data merge entity @s {brightness:{block:15,sky:15}}
data modify entity @s billboard set value fixed


scoreboard players set @s wardenrw.entity.timer 16
