scoreboard players set rotation wardenrw.math.temp 0
execute store result storage wardenrw:temp rotate.x int 1 run scoreboard players get rotation wardenrw.math.temp
execute if score rotation wardenrw.math.temp matches ..359 run function wardenrw:entity/warden/behaviour/sonic_stomp/normal_wave with storage wardenrw:temp rotate