function wardenrw:magic/mana/refill_mp {mp:25}
scoreboard players remove @s wardenrw.item.echoing_totem.stored_MP 25

scoreboard players set cd wardenrw.math.temp 120
scoreboard players set math2 wardenrw.math.temp 10
scoreboard players operation math1 wardenrw.math.temp = @s wardenrw.item.echoing_totem.stored_MP
scoreboard players operation math1 wardenrw.math.temp /= math2 wardenrw.math.temp
scoreboard players operation cd wardenrw.math.temp -= math1 wardenrw.math.temp
scoreboard players operation @s wardenrw.item.echoing_totem.regen_cd = cd wardenrw.math.temp

playsound block.sculk_sensor.clicking ambient @s ~ ~ ~ 1 0.5 0