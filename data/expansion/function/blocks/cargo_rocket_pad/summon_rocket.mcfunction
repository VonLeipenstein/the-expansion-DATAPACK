# sky access
execute at @s unless predicate expansion:location/sky_access run return run say requires sky access

# summon
function expansion:vehicles/cargo_rocket/summon/init

# mount
ride @e[type=minecraft:armor_stand,tag=exp.cargo_rocket,tag=exp.new_vehicle,distance=..0.01,limit=1] mount @s

# setup
execute on passengers if entity @s[tag=exp.cargo_rocket] run function expansion:vehicles/cargo_rocket/summon/setup

# give the player a beacon matching this launchpad
function expansion:blocks/cargo_rocket_pad/beacon/drop