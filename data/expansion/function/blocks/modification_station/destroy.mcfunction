# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/destroy
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

kill @e[type=item,nbt={Age:0s,Item:{components:{"minecraft:custom_name":{color:"dark_gray",translate:"exp_blocks_modstation_name"}}}},distance=..2]

execute as @p unless entity @s[gamemode=creative] run loot spawn ~ ~ ~ loot expansion:blocks/modstation

execute on passengers if entity @s[tag=exp.modstation.bot_link] on origin on passengers run kill @s
execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run function expansion:blocks/modification_station/select_vehicle/deselect
execute on passengers if entity @s[tag=exp.modstation.bot_link] on origin run kill @s
execute on passengers run kill @s
kill @s
 