scoreboard players remove steps wardenrw.slowcast.temp 1

execute positioned ~-1.25 ~-1 ~-1.25 as @e[dx=1.5,dy=1,dz=1.5,type=#wardenrw:mobs_player,type=!warden] run damage @s 36 wardenrw:sculk_wave by @n[type=warden]

tp ~ ~ ~

execute if score steps wardenrw.slowcast.temp matches 1.. rotated ~ 0 positioned ^ ^ ^.1 if block ^ ^ ^-.1 #wardenrw:non_solid unless block ^ ^-.1 ^-.1 #wardenrw:non_solid run function wardenrw:entity/warden/behaviour/projectile/sculk_wave/step
execute if score steps wardenrw.slowcast.temp matches 1.. rotated ~ 0 positioned ^ ^.1 ^ unless block ^ ^-.1 ^ #wardenrw:non_solid if block ^ ^ ^-.1 #wardenrw:non_solid run function wardenrw:entity/warden/behaviour/projectile/sculk_wave/step
execute if score steps wardenrw.slowcast.temp matches 1.. rotated ~ 0 positioned ^ ^-.1 ^ if block ^ ^.1 ^ #wardenrw:non_solid if block ^ ^ ^ #wardenrw:non_solid run function wardenrw:entity/warden/behaviour/projectile/sculk_wave/step

