execute as @s[tag=!wardenrw.holding.echoing_totem,predicate=wardenrw:action/holding/echoing_totem] run function wardenrw:item/accessory/echoing_totem/equip

execute as @s[tag=wardenrw.holding.echoing_totem] run function wardenrw:item/accessory/echoing_totem/holding

execute as @s[tag=wardenrw.holding.echoing_totem,predicate=!wardenrw:action/holding/echoing_totem] run function wardenrw:item/accessory/echoing_totem/unequip

