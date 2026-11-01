scoreboard players set @s wardenrw.raycast_range 300
execute if score @s wardenrw.mp matches 2.. unless score @s wardenrw.item.sculkstorm.cooldown.primary matches 1.. anchored eyes positioned ^ ^ ^.1 run function wardenrw:item/weapon/magic/sculkstorm/rain/raycast
execute unless score @s wardenrw.mp matches 2.. run function wardenrw:magic/mana/show_mp
advancement revoke @s only wardenrw:technical/action/right_click/sculkstorm
