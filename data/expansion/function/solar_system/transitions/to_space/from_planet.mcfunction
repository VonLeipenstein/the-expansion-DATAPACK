function expansion:utilities/weather/disable_weather

function expansion:solar_system/transitions/to_space/store_exit_coord

function expansion:utilities/store_pos_in_score
execute if entity @s[scores={exp.x=0..,exp.z=0..}] in expansion:space run tp @s ~120 ~ ~120 -45 0
execute if entity @s[scores={exp.x=0..,exp.z=..0}] in expansion:space run tp @s ~120 ~ ~-120 -135 0
execute if entity @s[scores={exp.x=..0,exp.z=0..}] in expansion:space run tp @s ~-120 ~ ~120 45 0
execute if entity @s[scores={exp.x=..0,exp.z=..0}] in expansion:space run tp @s ~-120 ~ ~-120 135 0