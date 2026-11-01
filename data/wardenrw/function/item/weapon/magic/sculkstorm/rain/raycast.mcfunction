scoreboard players remove @s wardenrw.raycast_range 1

execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #wardenrw:non_solid positioned ^ ^ ^-0.1 run function wardenrw:item/weapon/magic/sculkstorm/rain/random

execute positioned ^ ^ ^0.1 if block ~ ~ ~ #wardenrw:non_solid if score @s wardenrw.raycast_range matches 1.. run function wardenrw:item/weapon/magic/sculkstorm/rain/raycast