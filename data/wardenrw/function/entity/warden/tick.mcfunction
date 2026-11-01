## Death marker
execute unless score @s wardenrw.entity.warden.id = @s wardenrw.entity.warden.id at @s run function wardenrw:entity/warden/tracker/init
scoreboard players operation #this wardenrw.entity.warden.id = @s wardenrw.entity.warden.id

execute if score @s wardenrw.entity.warden.intro_timer matches 0 run bossbar set wardenrw:warden players @a[distance=..30]
function wardenrw:entity/warden/get_health

## targeting
execute if score @s wardenrw.entity.timer matches ..241 on target run tag @s add wardenrw.warden.target

## timer
execute unless score @s wardenrw.entity.timer matches 242.. if entity @n[tag=wardenrw.warden.target] run scoreboard players add @s wardenrw.entity.timer 1
execute if score @s wardenrw.entity.timer matches 242.. if entity @n[distance=..30,tag=wardenrw.warden.target] run scoreboard players add @s wardenrw.entity.timer 1
execute unless entity @n[distance=..30,tag=wardenrw.warden.target] if score @s wardenrw.entity.timer matches 242.. run function wardenrw:entity/warden/reset_timer
execute if score @s wardenrw.entity.timer matches 700.. run function wardenrw:entity/warden/reset_timer

scoreboard players operation math1 wardenrw.math.temp = @s wardenrw.entity.timer
scoreboard players set math2 wardenrw.math.temp 120
scoreboard players operation math1 wardenrw.math.temp %= math2 wardenrw.math.temp
execute if score math1 wardenrw.math.temp matches 0 run function wardenrw:entity/warden/reset

## pos storing
execute store result storage wardenrw:entity warden.pos.y float 1 run data get entity @s Pos[1]

## Phase 2
execute as @s[tag=!wardenrw.warden.phase_2] if score @s wardenrw.entity.health matches ..400 run function wardenrw:entity/warden/phase_2/start

## Attacks
# Random attack
execute if score @s wardenrw.entity.timer matches 239 run scoreboard players operation wardenrw.temp wardenrw.entity.warden.attack = @s wardenrw.entity.warden.attack
execute if score @s wardenrw.entity.timer matches 241 if score @s wardenrw.entity.warden.attack = wardenrw.temp wardenrw.entity.warden.attack store result score @s wardenrw.entity.warden.attack run random value 1..5
execute as @s[tag=wardenrw.warden.phase_2] if score @s wardenrw.entity.timer matches 242.. if score @s wardenrw.entity.warden.attack_count matches 5.. run scoreboard players set @s wardenrw.entity.warden.attack 6
execute as @s[tag=wardenrw.warden.phase_2] if score @s wardenrw.entity.timer matches 239 run scoreboard players add @s wardenrw.entity.warden.attack_count 1

# Sculk Barrage
execute if score @s wardenrw.entity.warden.attack matches 1 if score @s wardenrw.entity.timer matches 242.. run function wardenrw:entity/warden/behaviour/sculk_barrage/tick

# Sculk Burst
execute if score @s wardenrw.entity.warden.attack matches 2 if score @s wardenrw.entity.timer matches 242.. run function wardenrw:entity/warden/behaviour/sculk_burst/tick

# Wave Jump
execute if score @s wardenrw.entity.warden.attack matches 3 if score @s wardenrw.entity.timer matches 242.. run function wardenrw:entity/warden/behaviour/wave_jump/tick

# Shockwave Stomp
execute if score @s wardenrw.entity.warden.attack matches 4 if score @s wardenrw.entity.timer matches 242.. run function wardenrw:entity/warden/behaviour/shockwave_stomp/tick

# Sonic Stomp
execute if score @s wardenrw.entity.warden.attack matches 5 if score @s wardenrw.entity.timer matches 242.. run function wardenrw:entity/warden/behaviour/sonic_stomp/tick

# Jaw Ambush
execute if score @s wardenrw.entity.warden.attack matches 6 if score @s wardenrw.entity.timer matches 242.. run function wardenrw:entity/warden/behaviour/jaw_ambush/tick

## Intro
execute if score @s wardenrw.entity.warden.intro_timer matches 1.. run function wardenrw:entity/warden/intro/tick

## Despawn
execute unless entity @e[type=#wardenrw:mobs_player,type=!warden,distance=..40] run data modify entity @s Brain.memories."minecraft:dig_cooldown".ttl set value 0L

## Misc.
#tellraw @p {score:{name:"@s",objective:"wardenrw.entity.timer"}}
#execute as @s[tag=!wardenrw.warden.phase_2] run effect clear @a[distance=..13] darkness
execute as @s[tag=wardenrw.warden.phase_2] run effect give @a[distance=..30] night_vision 1 0 true
execute as @s[tag=wardenrw.warden.phase_2] run effect give @a[distance=..30] darkness 5 0 true

execute if score @s wardenrw.entity.timer matches ..241 run tag @e[tag=wardenrw.warden.target] remove wardenrw.warden.target
effect give @s resistance 1 1 true 
#execute as @s[tag=wardenrw.warden.phase_2] run effect give @s resistance 1 2 true