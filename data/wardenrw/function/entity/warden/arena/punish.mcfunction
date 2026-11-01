damage @s 3 wardenrw:sculk_arena
effect give @s blindness 3 0 true
effect give @s darkness 4 0 true
effect give @s weakness 2 0 true
effect give @s slowness 1 1 true

playsound entity.warden.death ambient @s ~ ~ ~ 1 2 0
execute anchored eyes positioned ^ ^ ^.1 run particle sculk_soul ~ ~ ~ 0.5 0.5 0.5 0.05 20 force @s
execute anchored eyes positioned ^ ^ ^.1 run particle flash{color:[0,0.5,0.5,1]} ~ ~ ~ 0 0 0 0 1 force @s

title @s title [{text:"---",obfuscated:true,color:"dark_aqua",italic:true},{translate:"entity.wardenrw.warden.warning",color:"dark_aqua","italic":true,obfuscated:false},{text:"---",obfuscated:true,color:"dark_aqua",italic:true}]
