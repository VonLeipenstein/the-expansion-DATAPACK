execute if entity @s[nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_data":{blue_core:1b}}}]}] run loot give @p[tag=exp.takes_core] loot expansion:items/portal_cores/portal_core_blue
execute if entity @s[nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_data":{green_core:1b}}}]}] run loot give @p[tag=exp.takes_core] loot expansion:items/portal_cores/portal_core_green
execute if entity @s[nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_data":{purple_core:1b}}}]}] run loot give @p[tag=exp.takes_core] loot expansion:items/portal_cores/portal_core_purple
execute if entity @s[nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_data":{red_core:1b}}}]}] run loot give @p[tag=exp.takes_core] loot expansion:items/portal_cores/portal_core_red
execute if entity @s[nbt={ArmorItems:[{},{},{},{components:{"minecraft:custom_data":{yellow_core:1b}}}]}] run loot give @p[tag=exp.takes_core] loot expansion:items/portal_cores/portal_core_yellow

item replace entity @s armor.head with minecraft:air
tag @p add exp.took_portal_core

execute as @e[type=minecraft:armor_stand,tag=exp.portal_main,limit=1,sort=nearest] run function expansion:blocks/portal/cores/remove_core_count