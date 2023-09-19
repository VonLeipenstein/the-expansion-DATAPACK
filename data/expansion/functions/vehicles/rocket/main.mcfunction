execute on vehicle on vehicle run function expansion:vehicles/rocket/inside
execute unless predicate expansion:nbt_checks/root_vehicle/rocket unless entity @s[tag=exp.landing_moon] run function expansion:vehicles/rocket/exit_rocket

# attempt to make the player ride the lunar module when landing on the moon.
execute if entity @s[tag=exp.landing_moon] unless score @s exp.cooldown matches 1.. run function expansion:global/transitions/moon_earth/earth_moon_check

# store players position
function expansion:global/position

