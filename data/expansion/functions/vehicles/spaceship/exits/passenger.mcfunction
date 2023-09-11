# remove passenger count
scoreboard players remove @e[type=minecraft:armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.passenger_count 1

# when the pilot leaves the ship first
execute if entity @s[tag=exp.spaceship_pilot] unless score @e[type=minecraft:armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.passenger_count matches 0 run tag @p[tag=!exp.spaceship_pilot,tag=exp.inside_spaceship] add exp.spaceship_pilot

# run when this is the last player to leave the ship
execute if score @e[type=minecraft:armor_stand,tag=exp.spaceship,limit=1,sort=nearest] exp.passenger_count matches 0 run function expansion:vehicles/spaceship/exits/pilot

# teleport the player next to the spaceship
execute at @s rotated ~ 0 on passengers on passengers run tp @s[tag=!exp.ejected,tag=exp.inside_spaceship] ^-2 ^ ^1 ~ ~

# remove basic player effects
function expansion:vehicles/spaceship/exits/remove_effects