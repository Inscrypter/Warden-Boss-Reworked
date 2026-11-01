tellraw @a {"color":"#eb99ff","translate":"entity.wardenrw.boss.despawned",with:[{text:"Warden"}]}
tag @n[type=warden,predicate=wardenrw:id/entity/warden] add wardenrw.warden.despawning
bossbar set wardenrw:warden players
execute as @n[tag=wardenrw.warden.arena,predicate=wardenrw:id/entity/warden] at @s run function wardenrw:entity/warden/arena/destroy
kill @s
