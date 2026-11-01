scoreboard players remove @s wardenrw.entity.timer 1

execute if score @s wardenrw.entity.timer matches 15 run data modify entity @s item set value {id:stick,components:{item_model:"wardenrw:vfx/sculk_shockwave/2"},count:1}
execute if score @s wardenrw.entity.timer matches 12 run data modify entity @s item set value {id:stick,components:{item_model:"wardenrw:vfx/sculk_shockwave/3"},count:1}
execute if score @s wardenrw.entity.timer matches 10 run data modify entity @s item set value {id:stick,components:{item_model:"wardenrw:vfx/sculk_shockwave/4"},count:1}
execute if score @s wardenrw.entity.timer matches 8 run data modify entity @s item set value {id:stick,components:{item_model:"wardenrw:vfx/sculk_shockwave/5"},count:1}
execute if score @s wardenrw.entity.timer matches 5 run data modify entity @s item set value {id:stick,components:{item_model:"wardenrw:vfx/sculk_shockwave/6"},count:1}

execute unless score @s wardenrw.entity.timer matches 1.. run kill