execute if score @s wardenrw.item.jawrender.attack_counter matches 5.. run scoreboard players set @s wardenrw.item.jawrender.attack_counter 0

execute unless score @s wardenrw.item.jawrender.attack_counter matches 0.. run scoreboard players set @s wardenrw.item.jawrender.attack_counter 0
scoreboard players add @s wardenrw.item.jawrender.attack_counter 1

