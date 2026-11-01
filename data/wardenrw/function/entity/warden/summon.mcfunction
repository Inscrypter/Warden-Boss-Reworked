scoreboard players set @s wardenrw.entity.timer -20
scoreboard players set @s wardenrw.entity.warden.intro_timer 80
scoreboard players set @s wardenrw.entity.warden.attack 0
scoreboard players set @s wardenrw.entity.warden.attack_count 0
tag @s add wardenrw.warden

attribute @s fall_damage_multiplier base set 0
attribute @s explosion_knockback_resistance base set 1
attribute @s max_health base set 1000
data merge entity @s {Health:1000}