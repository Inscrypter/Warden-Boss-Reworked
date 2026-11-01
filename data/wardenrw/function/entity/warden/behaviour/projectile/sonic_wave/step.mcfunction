scoreboard players remove steps wardenrw.slowcast.temp 1

tp ~ ~ ~

execute if score steps wardenrw.slowcast.temp matches 1.. rotated ~ 0 positioned ^ ^ ^.1 if block ^ ^ ^-.1 #wardenrw:non_solid unless block ^ ^-.1 ^-.1 #wardenrw:non_solid run function wardenrw:entity/warden/behaviour/projectile/sonic_wave/step
execute if score steps wardenrw.slowcast.temp matches 1.. rotated ~ 0 positioned ^ ^.1 ^ unless block ^ ^-.1 ^ #wardenrw:non_solid if block ^ ^ ^-.1 #wardenrw:non_solid run function wardenrw:entity/warden/behaviour/projectile/sonic_wave/step
execute if score steps wardenrw.slowcast.temp matches 1.. rotated ~ 0 positioned ^ ^-.1 ^ if block ^ ^.1 ^ #wardenrw:non_solid if block ^ ^ ^ #wardenrw:non_solid run function wardenrw:entity/warden/behaviour/projectile/sonic_wave/step

