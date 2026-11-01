execute if score @s wardenrw.mp matches ..-1 run scoreboard players set @s wardenrw.mp 0
$scoreboard players add @s wardenrw.mp $(mp)
execute if score @s wardenrw.mp > @s wardenrw.max_mp run scoreboard players operation @s wardenrw.mp = @s wardenrw.max_mp
function wardenrw:magic/mana/show_mp
playsound block.sculk_catalyst.bloom ambient @s ~ ~ ~ 1 1
$execute anchored eyes positioned ^ ^ ^.5 run particle sculk_charge_pop ~ ~ ~ 0.25 0.5 0.25 0.01 $(mp)