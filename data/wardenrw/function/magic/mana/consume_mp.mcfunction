execute if score @s wardenrw.mp > @s wardenrw.max_mp run scoreboard players operation @s wardenrw.mp = @s wardenrw.max_mp
$scoreboard players remove @s wardenrw.mp $(mp)
execute if score @s wardenrw.mp matches ..-1 run scoreboard players set @s wardenrw.mp 0
function wardenrw:magic/mana/show_mp

#echoing totem

$scoreboard players set math1 wardenrw.math.temp $(mp)
execute store result storage wardenrw:magic echoing_totem.mp float 1 run scoreboard players get math1 wardenrw.math.temp
execute as @s[tag=wardenrw.holding.echoing_totem] run function wardenrw:item/accessory/echoing_totem/storing_mp with storage wardenrw:magic echoing_totem