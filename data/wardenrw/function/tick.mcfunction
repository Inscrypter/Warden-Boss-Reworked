### Entity
    ## Warden
    execute as @e[type=warden,tag=!wardenrw.warden] run function wardenrw:entity/warden/summon
    execute as @e[type=warden,tag=wardenrw.warden,tag=!wardenrw.warden.despawning] at @s run function wardenrw:entity/warden/tick
    execute as @e[type=marker,tag=wardenrw.warden.tracker] at @s run function wardenrw:entity/warden/tracker/tp
        # Sculk Blob
        execute as @e[tag=wardenrw.sculk_blob] at @s run function wardenrw:entity/warden/behaviour/projectile/sculk_blob/duration
        # Sculk Wave
        execute as @e[tag=wardenrw.sculk_wave] at @s run function wardenrw:entity/warden/behaviour/projectile/sculk_wave/duration
        # Shockwave
        execute as @e[tag=wardenrw.sculk_shockwave] at @s run function wardenrw:entity/warden/behaviour/projectile/sculk_shockwave/duration
        # Sonic Wave
        execute as @e[tag=wardenrw.sonic_wave] at @s run function wardenrw:entity/warden/behaviour/projectile/sonic_wave/duration
        # Sonic Pillar
        execute as @e[tag=wardenrw.sonic_pillar] at @s run function wardenrw:entity/warden/behaviour/projectile/sonic_wave/sonic_pillar/duration
        # Sculk Jaw
        execute as @e[tag=wardenrw.sculk_jaw] at @s run function wardenrw:entity/warden/behaviour/projectile/sculk_jaw/duration

### Vfx
    execute as @e[tag=wardenrw.vfx.sculk_shockwave] run function wardenrw:vfx/sculk_shockwave/duration

### Item
    ## Accessories
        # Echoing Totem
        execute as @a at @s run function wardenrw:item/accessory/echoing_totem/tick
    ## Weapons
        # Sculkstorm
        execute as @a unless entity @s[predicate=!wardenrw:score/sculkstorm_primary,predicate=!wardenrw:score/sculkstorm_secondary] at @s run function wardenrw:item/weapon/magic/sculkstorm/tick
        execute as @e[tag=wardenrw.sculk_blob.secondary] at @s run function wardenrw:item/weapon/magic/sculkstorm/sculk_blob/duration
        execute as @e[tag=wardenrw.sculk_blob.primary] at @s run function wardenrw:item/weapon/magic/sculkstorm/sculk_blob_rain/duration
        execute as @e[tag=wardenrw.vfx.sculk_shockwave.sculkstorm] run function wardenrw:item/weapon/magic/sculkstorm/rain/vfx/duration
        # Jawrender
        execute as @a[scores={wardenrw.item.jawrender.cooldown.secondary=1..}] at @s run function wardenrw:item/weapon/melee/jawrender/tick
        execute as @e[tag=wardenrw.sculk_wave.jawrender] at @s run function wardenrw:item/weapon/melee/jawrender/sculk_wave/duration
        execute as @e[tag=wardenrw.sculk_jaw.jawrender] at @s run function wardenrw:item/weapon/melee/jawrender/sculk_jaw/duration
        # Riftcaller
        execute as @a[scores={wardenrw.item.riftcaller.cooldown=1..}] at @s run function wardenrw:item/weapon/magic/riftcaller/tick
        execute as @e[tag=wardenrw.sonic_wave.riftcaller] at @s run function wardenrw:item/weapon/magic/riftcaller/sonic_wave/duration
        execute as @e[tag=wardenrw.sonic_pillar.riftcaller] at @s run function wardenrw:item/weapon/magic/riftcaller/sonic_wave/sonic_pillar/duration

### Magic
    execute as @a run function wardenrw:magic/damage/crit
    execute as @a[scores={wardenrw.mp_tier=1..}] run function wardenrw:magic/mana/max_mp
    execute as @a[scores={wardenrw.mp_tier=1..}] if score @s wardenrw.mp < @s wardenrw.max_mp at @s run function wardenrw:magic/mana/regenerate_mp

### Action
execute as @a[scores={wardenrw.death=1..}] run function wardenrw:action/death
execute as @a[scores={wardenrw.respawn=1}] run function wardenrw:action/respawn
execute as @a[tag=wardenrw.action.critical_hit] run function wardenrw:action/tick/critical_hit
execute as @a[tag=wardenrw.action.hurt_entity] run function wardenrw:action/tick/hurt_entity
execute as @a run function wardenrw:action/reset