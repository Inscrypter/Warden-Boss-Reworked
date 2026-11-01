execute store result storage wardenrw:temp random.x int 1 run random value -6..6
execute store result storage wardenrw:temp random.z int 1 run random value -6..6
execute rotated ~ 0 positioned ^ ^1.5 ^0.5 run function wardenrw:entity/warden/behaviour/sculk_burst/shoot with storage wardenrw:temp random