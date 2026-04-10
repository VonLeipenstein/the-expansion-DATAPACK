# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/upgrade/finish
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/modification_station/upgrade/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

# 
data modify storage expansion:temp ModStorage set from entity @s data.ModStorage
execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run function expansion:blocks/modification_station/upgrade/apply
data remove storage expansion:temp ModStorage
data remove entity @s data.ModStorage

# make the bots fly back to the block
data modify storage expansion:owner data.current_UUID set from entity @s UUID
execute on passengers if entity @s[tag=exp.modstation.bot_link] on origin on passengers run function expansion:utilities/snowball_link/link_from_storage

# 
scoreboard players reset @s exp.timer_1
tag @s remove exp.modifying_vehicle