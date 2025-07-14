# never suffocate in creative or spectator
execute if entity @s[gamemode=creative] run return fail
execute if entity @s[gamemode=spectator] run return fail

# never suffocate inside a vehicle
execute if entity @s[tag=exp.inside_vehicle] run return fail

# never suffocate in planets that have ambient oxygen
execute unless predicate expansion:dimension/oxygen_absent run return fail

# suffocate if your oxygen level is below 1
execute unless score @s exp.oxygen_lvl matches 1.. run return 1

return fail