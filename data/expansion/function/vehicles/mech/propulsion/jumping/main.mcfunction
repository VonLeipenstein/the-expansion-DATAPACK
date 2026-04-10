# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/propulsion/jumping/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/propulsion/drive (1 caller) [OK above +1]
# <<< generated function callers <<<

scoreboard players set @s exp.speed 20

# particles
execute rotated ~ 0 positioned ^-.4 ^2.5 ^-1 run function expansion:vehicles/mech/propulsion/jumping/particles
execute rotated ~ 0 positioned ^.4 ^2.5 ^-1 run function expansion:vehicles/mech/propulsion/jumping/particles

# detect impact, don't run anything beyond this function if the fuel/input ran out
execute if entity @s[tag=exp.mech_jumped] run return run execute if entity @s[nbt={OnGround:1b}] run function expansion:vehicles/mech/propulsion/jumping/impact

# consume fuel while jumping
scoreboard players remove @s exp.fuel_level 1

# apply motion based on the fuel level
execute store result entity @s Motion[1] double 0.015 run scoreboard players get @s exp.fuel_level

# stop motion if player hits the ground, if the fuel depletes or if jump input is stopped
execute unless score @s exp.jump matches 1 run tag @s add exp.mech_jumped
execute unless score @s exp.fuel_level matches 1.. run tag @s add exp.mech_jumped