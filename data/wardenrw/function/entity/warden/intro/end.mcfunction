title @a[distance=..64] title {"bold":true,"color":"aqua","text":"WARDEN"}
title @a[distance=..64] subtitle {"color":"dark_aqua","text":"TERROR OF THE DEEP DARK"}
playsound entity.warden.roar hostile @a[distance=..64] ~ ~ ~ 4 1.25 0.0
playsound entity.warden.roar hostile @a[distance=..64] ~ ~ ~ 4 1 0.0
playsound entity.warden.roar hostile @a[distance=..64] ~ ~ ~ 4 0.75 0.0
playsound entity.warden.roar hostile @a[distance=..64] ~ ~ ~ 4 0.5 0.0
particle sculk_soul ^ ^ ^ 0.0 0.0 0.0 0.5 100 normal @a[distance=..64]
particle trial_spawner_detection_ominous ^ ^ ^ 0 0 0 1 100 normal @a[distance=..64]
particle flash{color:[0,0.5,0.5,1]} ^ ^ ^ 2 2 2 0.5 50 normal @a[distance=..64]
tellraw @a {"color":"light_purple","translate":"entity.wardenrw.boss.summoned",with:[{text:"Warden"}]}