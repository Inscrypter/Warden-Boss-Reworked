execute if score @s wardenrw.entity.timer matches 280 run function wardenrw:entity/warden/behaviour/shockwave_stomp/jump
execute if score @s wardenrw.entity.timer matches 290 run tag @s add wardenrw.warden.falling
execute if score @s wardenrw.entity.timer matches 300 run attribute @s gravity modifier add wardenrw:gravity 3 add_multiplied_base

execute if score @s wardenrw.entity.timer matches 350 run function wardenrw:entity/warden/behaviour/shockwave_stomp/jump
execute if score @s wardenrw.entity.timer matches 361 run tag @s add wardenrw.warden.falling
execute if score @s wardenrw.entity.timer matches 371 run attribute @s gravity modifier add wardenrw:gravity 3 add_multiplied_base

execute if score @s wardenrw.entity.timer matches 420 run function wardenrw:entity/warden/behaviour/shockwave_stomp/jump
execute if score @s wardenrw.entity.timer matches 430 run tag @s add wardenrw.warden.falling
execute if score @s wardenrw.entity.timer matches 440 run attribute @s gravity modifier add wardenrw:gravity 3 add_multiplied_base

execute if score @s wardenrw.entity.timer matches 490 run function wardenrw:entity/warden/behaviour/shockwave_stomp/jump
execute if score @s wardenrw.entity.timer matches 500 run tag @s add wardenrw.warden.falling
execute if score @s wardenrw.entity.timer matches 510 run attribute @s gravity modifier add wardenrw:gravity 3 add_multiplied_base

execute as @s[tag=wardenrw.warden.falling] if predicate wardenrw:action/on_ground run function wardenrw:entity/warden/behaviour/shockwave_stomp/stomp

effect give @s slowness 1 3 true
effect give @s resistance 1 3 true 
execute if score @s wardenrw.entity.timer matches 240..260 run particle sculk_charge{roll:0} ~ ~ ~ 0.5 0.1 0.5 0 2 force @a[distance=..64]

execute as @s[tag=!wardenrw.warden.phase_2] if score @s wardenrw.entity.timer matches 480.. run scoreboard players set @s wardenrw.entity.timer 1
execute as @s[tag=wardenrw.warden.phase_2] if score @s wardenrw.entity.timer matches 550.. run scoreboard players set @s wardenrw.entity.timer 121