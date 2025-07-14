# never lose oxygen in creative or spectator
execute if entity @s[gamemode=creative] run return fail
execute if entity @s[gamemode=spectator] run return fail

# never lose oxygen inside a vehicle
execute if entity @s[tag=exp.inside_vehicle] run return fail

# always lose oxygen under water
execute if function expansion:spacesuits/integrity/detect_water run return 1

# never lose oxygen in planets that have ambient oxygen
execute unless predicate expansion:dimension/oxygen_absent run return fail

# Lose oxygen in all other scenarios
return 1