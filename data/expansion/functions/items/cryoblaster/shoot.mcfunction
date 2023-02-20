tag @s add exp.shooting_ice
function expansion:utilities/raycast/gun_cast
execute as @e[tag=exp.freeze,type=#expansion:sentient] at @s run function expansion:items/cryoblaster/freeze
scoreboard players remove @s exp.ammo 2
tag @s add exp.used_ammo
tag @s remove exp.shooting_ice

