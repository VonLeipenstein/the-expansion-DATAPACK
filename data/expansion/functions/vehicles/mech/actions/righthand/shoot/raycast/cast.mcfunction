tag @s add exp.gatling_bullet

# align the bullet rotation with the gatling gun
execute positioned ^ ^ ^ rotated ~ ~ run tp @s ^ ^ ^ ~ ~

# shoot particles
particle flame ~ ~ ~ 0 0 0 0.01 1 force
particle dust_plume ~ ~ ~ 0 0 0 0.01 1 force
particle ash ~ ~ ~ 0 0 0 0.01 1 force

# add random spread
#execute store result score @s exp.random run random value -5..5 spread_x
#function expansion:vehicles/mech/actions/righthand/shoot/raycast/spread_x
#execute store result score @s exp.random run random value -5..5 spread_y
#function expansion:vehicles/mech/actions/righthand/shoot/raycast/spread_y

# summon bullet trail
execute positioned ^ ^ ^ rotated ~ ~ summon item_display run function expansion:vehicles/mech/actions/righthand/shoot/raycast/bullet_trail/summon

# set max range
scoreboard players set @s exp.max_range 300

# raycast
execute positioned as @s rotated as @s run function expansion:vehicles/mech/actions/righthand/shoot/raycast/loop

# kill the bullet
kill @s