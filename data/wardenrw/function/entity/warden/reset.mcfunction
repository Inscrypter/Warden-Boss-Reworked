data modify entity @s Brain.memories."minecraft:sonic_boom_cooldown".ttl set value 100000000L
scoreboard players add @s wardenrw.entity.timer 1
attribute @s gravity modifier remove wardenrw:gravity
tag @s remove wardenrw.warden.falling
