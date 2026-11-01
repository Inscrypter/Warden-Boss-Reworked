execute if score @s wardenrw.item.echoing_totem.stored_MP matches ..-1 run scoreboard players set @s wardenrw.item.echoing_totem.stored_MP 0
$scoreboard players add @s wardenrw.item.echoing_totem.stored_MP $(mp)
execute if score @s wardenrw.item.echoing_totem.stored_MP matches 601.. run scoreboard players set @s wardenrw.item.echoing_totem.stored_MP 600