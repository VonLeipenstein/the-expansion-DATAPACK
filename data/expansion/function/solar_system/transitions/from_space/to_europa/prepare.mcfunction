# >>> generated function callers >>>
# Callers for expansion:solar_system/transitions/from_space/to_europa/prepare
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:solar_system/transitions/from_space/to_europa/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

# --- only runs as the spaceship pilot
execute on vehicle run data modify storage expansion:return_pos data.ReturnPos set from entity @s data.ReturnPos.europa

execute summon minecraft:marker run function expansion:solar_system/transitions/from_space/to_europa/finish