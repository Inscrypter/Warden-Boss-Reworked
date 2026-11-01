
$scoreboard players set crit wardenrw.math.temp $(crit)
execute if entity @s[nbt={HurtTime:0s}] if score crit wardenrw.math.temp matches 1 run playsound block.respawn_anchor.deplete ambient @a ~ ~ ~ 1 1.5 0
execute if entity @s[nbt={HurtTime:0s}] if score crit wardenrw.math.temp matches 1 at @s anchored eyes positioned ^ ^ ^ run particle crit ~ ~ ~ 0.0 0.0 0.0 0.5 10 normal @a[distance=..64]

$damage @s $(damage) $(type) by $(attacker)