# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/summon_rocket
# Total callers: 0
# None found
# <<< generated function callers <<<

# sky access
execute at @s unless predicate expansion:location/sky_access run return run say requires sky access

# summon
function expansion:vehicles/cargo_rocket/summon/init

# mount
ride @e[type=minecraft:armor_stand,tag=exp.cargo_rocket,tag=exp.new_vehicle,distance=..0.01,limit=1] mount @s

# setup
execute on passengers if entity @s[tag=exp.cargo_rocket] run function expansion:vehicles/cargo_rocket/summon/setup

# remove the rocket the player is holding
item modify entity @p[tag=exp.clicked] weapon.mainhand expansion:utility/reduce_count