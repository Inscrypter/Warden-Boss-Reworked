$execute rotated $(x) 0 positioned ^ ^ ^.1 summon item_display run function wardenrw:entity/warden/behaviour/projectile/sculk_shockwave/setup {sound:true}
scoreboard players add rotation wardenrw.math.temp 10
execute store result storage wardenrw:temp rotate.x int 1 run scoreboard players get rotation wardenrw.math.temp
execute if score rotation wardenrw.math.temp matches ..359 run function wardenrw:entity/warden/behaviour/shockwave_stomp/wave with storage wardenrw:temp rotate
