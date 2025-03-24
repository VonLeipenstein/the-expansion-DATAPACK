# fail if the current block is solid
execute if block ~ ~ ~ #expansion:airtight run return fail

# fail if none of the neighbouring blocks is solid
# The wave only goes over the walls
execute unless predicate expansion:location/oxygenator_valid run return fail

# fail if there already is a marker
execute if entity @e[type=minecraft:marker,tag=exp.oxygen_marker,distance=..0.01,limit=1] run return fail

return 1