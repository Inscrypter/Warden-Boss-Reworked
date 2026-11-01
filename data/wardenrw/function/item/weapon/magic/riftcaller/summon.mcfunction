scoreboard players set @s wardenrw.item.riftcaller.cooldown 120
function wardenrw:magic/mana/consume_mp {mp:60}

scoreboard players set rotation wardenrw.math.temp 0
execute store result storage wardenrw:temp rotate.x int 1 run scoreboard players get rotation wardenrw.math.temp
execute if score rotation wardenrw.math.temp matches ..359 run function wardenrw:item/weapon/magic/riftcaller/wave with storage wardenrw:temp rotate