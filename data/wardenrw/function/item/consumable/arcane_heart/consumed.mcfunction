execute if score @s wardenrw.mp_tier matches 1.. run loot give @s[gamemode=!creative] loot wardenrw:item/consumables/arcane_heart

execute unless score @s wardenrw.mp_tier matches 1.. run particle sculk_soul ~ ~1 ~ 0.25 0.5 0.25 0.05 20 normal @a[distance=..64]
execute unless score @s wardenrw.mp_tier matches 1.. run particle flash{color:[0,0.5,0.5,1]} ~ ~1 ~ 0 0 0 0.05 1 normal @a[distance=..64]
execute unless score @s wardenrw.mp_tier matches 1.. run playsound block.sculk_shrieker.shriek ambient @a ~ ~ ~ 1 0.75 0
execute unless score @s wardenrw.mp_tier matches 1.. run playsound entity.elder_guardian.curse ambient @a ~ ~ ~ 1 0.5 0
execute unless score @s wardenrw.mp_tier matches 1.. run scoreboard players set @s wardenrw.max_mp 100
execute unless score @s wardenrw.mp_tier matches 1.. run function wardenrw:magic/mana/show_mp

execute unless score @s wardenrw.mp_tier matches 1.. run scoreboard players set @s wardenrw.mp 100
execute unless score @s wardenrw.mp_tier matches 1.. run scoreboard players set @s wardenrw.mp_tier 1
execute unless score @s wardenrw.mp_tier matches 1.. run scoreboard players set @s wardenrw.additional_mp 0

advancement revoke @s only wardenrw:technical/action/consume/arcane_heart