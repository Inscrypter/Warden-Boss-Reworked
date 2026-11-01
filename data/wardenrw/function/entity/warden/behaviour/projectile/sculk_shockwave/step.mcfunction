scoreboard players remove steps wardenrw.slowcast.temp 1

execute positioned ~-1 ~-0.75 ~-1 as @e[dx=1,dy=0.5,dz=1,type=#wardenrw:mobs_player,type=!warden] run damage @s 30 wardenrw:sculk_wave by @n[type=warden]

tp ~ ~ ~

execute if score steps wardenrw.slowcast.temp matches 1.. rotated ~ 0 positioned ^ ^ ^.1 if block ^ ^ ^-.1 #wardenrw:non_solid unless block ^ ^-.1 ^-.1 #wardenrw:non_solid run function wardenrw:entity/warden/behaviour/projectile/sculk_shockwave/step
execute if score steps wardenrw.slowcast.temp matches 1.. rotated ~ 0 positioned ^ ^.1 ^ unless block ^ ^-.1 ^ #wardenrw:non_solid if block ^ ^ ^-.1 #wardenrw:non_solid run function wardenrw:entity/warden/behaviour/projectile/sculk_shockwave/step
execute if score steps wardenrw.slowcast.temp matches 1.. rotated ~ 0 positioned ^ ^-.1 ^ if block ^ ^.1 ^ #wardenrw:non_solid if block ^ ^ ^ #wardenrw:non_solid run function wardenrw:entity/warden/behaviour/projectile/sculk_shockwave/step
