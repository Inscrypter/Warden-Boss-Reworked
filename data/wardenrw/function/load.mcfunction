schedule function wardenrw:entity/warden/arena/check 2s

scoreboard objectives add wardenrw.pos dummy
scoreboard objectives add wardenrw.slowcast.steps dummy
scoreboard objectives add wardenrw.slowcast.duration dummy
scoreboard objectives add wardenrw.raycast_range dummy
scoreboard objectives add wardenrw.slowcast.temp dummy
scoreboard objectives add wardenrw.math.temp dummy
scoreboard objectives add wardenrw.block dummy
scoreboard objectives add wardenrw.damage_dealt minecraft.custom:damage_dealt
scoreboard objectives add wardenrw.death deathCount
scoreboard objectives add wardenrw.respawn custom:time_since_death

### Magic
    scoreboard objectives add wardenrw.mp dummy
    scoreboard objectives add wardenrw.additional_mp dummy
    scoreboard objectives add wardenrw.max_mp dummy
    scoreboard objectives add wardenrw.mp_tier dummy
    scoreboard objectives add wardenrw.mp_regenerate_timer dummy

    scoreboard objectives add wardenrw.magic_crit_chance dummy
    scoreboard objectives add wardenrw.magic_crit_chance.add dummy
    scoreboard objectives add wardenrw.magic_damage_modifier dummy

### Entity
scoreboard objectives add wardenrw.entity.health dummy
scoreboard objectives add wardenrw.entity.max_health dummy
scoreboard objectives add wardenrw.entity.timer dummy

    ## Warden 
    bossbar add wardenrw:warden {text:"WARDEN",bold:true,color:dark_aqua}
    bossbar set wardenrw:warden name {text:"WARDEN",bold:true,color:dark_aqua}
    bossbar set wardenrw:warden color blue
    bossbar set wardenrw:warden max 1000
    bossbar set wardenrw:warden style notched_10

    scoreboard objectives add wardenrw.entity.warden.intro_timer dummy
    scoreboard objectives add wardenrw.entity.warden.id dummy
    scoreboard objectives add wardenrw.entity.warden_hitter.id dummy
    scoreboard objectives add wardenrw.entity.warden.attack dummy
    scoreboard objectives add wardenrw.entity.warden.attack_count dummy

### Item
    scoreboard objectives add wardenrw.item.cooldown dummy
    ## Accessories
        # Echoing Totem
        scoreboard objectives add wardenrw.item.echoing_totem.stored_MP dummy
        scoreboard objectives add wardenrw.item.echoing_totem.regen_cd dummy
        scoreboard objectives add wardenrw.item.echoing_totem.sculk_soul dummy
        scoreboard objectives add wardenrw.item.echoing_totem.sculk_soul.target dummy

    ## Weapons
        # Sculkstorm
        scoreboard objectives add wardenrw.item.sculkstorm.cooldown.primary dummy
        scoreboard objectives add wardenrw.item.sculkstorm.cooldown.secondary dummy
        scoreboard objectives add wardenrw.item.sculk_blob.id dummy

        # Jawrender
        scoreboard objectives add wardenrw.item.jawrender.attack_counter dummy
        scoreboard objectives add wardenrw.item.jawrender.cooldown.secondary dummy
        scoreboard objectives add wardenrw.item.jawrender.id dummy

        # Riftcaller
        scoreboard objectives add wardenrw.item.riftcaller.cooldown dummy
        scoreboard objectives add wardenrw.item.riftcaller.id dummy