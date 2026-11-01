scoreboard players set @s wardenrw.raycast_range 300
execute if score @s wardenrw.mp matches 60.. unless score @s wardenrw.item.riftcaller.cooldown matches 1.. anchored eyes positioned ^ ^ ^.1 run function wardenrw:item/weapon/magic/riftcaller/raycast
execute unless score @s wardenrw.mp matches 60.. run function wardenrw:magic/mana/show_mp
advancement revoke @s only wardenrw:technical/action/right_click/riftcaller
