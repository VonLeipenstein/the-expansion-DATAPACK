# --- only runs as the spaceship pilot
execute on vehicle run data modify storage expansion:return_pos data.ReturnPos set from entity @s data.ReturnPos.moon

execute summon minecraft:marker run function expansion:solar_system/transitions/from_space/to_moon/finish