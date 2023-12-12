function expansion:utilities/weather/disable_weather
execute if entity @s[scores={exp.x=0..,exp.z=0..}] in expansion:space run tp @a[tag=exp.transition_temp] 120 128 120 -45 0
execute if entity @s[scores={exp.x=0..,exp.z=..0}] in expansion:space run tp @a[tag=exp.transition_temp] 120 128 -120 -135 0
execute if entity @s[scores={exp.x=..0,exp.z=0..}] in expansion:space run tp @a[tag=exp.transition_temp] -120 128 120 45 0
execute if entity @s[scores={exp.x=..0,exp.z=..0}] in expansion:space run tp @a[tag=exp.transition_temp] -120 128 -120 135 0

