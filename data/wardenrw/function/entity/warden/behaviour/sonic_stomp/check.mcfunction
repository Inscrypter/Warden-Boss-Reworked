scoreboard players remove @s wardenrw.math.temp 1

execute unless block ~ ~3 ~ #wardenrw:non_solid run function wardenrw:entity/warden/behaviour/sonic_stomp/tp
execute unless score @s wardenrw.math.temp matches 1.. run function wardenrw:entity/warden/behaviour/sonic_stomp/tp

execute if score @s wardenrw.math.temp matches 1.. if block ~ ~1 ~ #wardenrw:non_solid if block ~ ~2 ~ #wardenrw:non_solid if block ~ ~3 ~ #wardenrw:non_solid positioned ~ ~1 ~ run function wardenrw:entity/warden/behaviour/sonic_stomp/check
