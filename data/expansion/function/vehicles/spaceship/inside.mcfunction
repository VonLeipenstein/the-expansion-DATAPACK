# regulates the propulsion
execute if score @s exp.fuel_level matches 1.. run function expansion:vehicles/spaceship/propulsion/propulsion

# actionbar
execute if predicate expansion:periodic/2 run function expansion:vehicles/spaceship/actionbar

# make the spaceship float in space when speed is 0 (or when fuel runs out)
execute if score @s exp.speed matches ..10 run function expansion:vehicles/spaceship/propulsion/no_speed

# remove blaster cooldown
scoreboard players remove @s[scores={exp.counter_2=1..}] exp.counter_2 1

# speed for bigger FOV
execute on passengers if entity @s[type=armor_stand,tag=exp.spaceship_display] on passengers run effect give @s speed 1 4 true
execute on passengers if entity @s[type=armor_stand,tag=exp.spaceship_display] on passengers run effect give @s resistance 1 4 true

# marker functions
execute if entity @s[tag=exp.has_active_markers] if predicate expansion:periodic/10 on passengers if entity @s[tag=exp.planet_marker] run function expansion:vehicles/spaceship/markers/markers
# deactivate the markers in any other dimension than space
execute if entity @s[tag=exp.has_active_markers] unless predicate expansion:dimension/space run function expansion:vehicles/spaceship/markers/deactivate_markers
