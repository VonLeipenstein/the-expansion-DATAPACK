tag @s remove exp.new_vehicle

# set the rotation equal to the saved player rotation
function expansion:blocks/set_rotation

# summon and mount the animated model 
execute at @s rotated ~ 0 run function animated_java:buggy/summon {args: {}}
ride @e[type=item_display,tag=aj.buggy.root,distance=..0.01,limit=1] mount @s

# copy the buggy item to a storage
data modify entity @s equipment.feet set from entity @p[tag=exp.tick_player] SelectedItem

# make the buggy weightless if it is in a zero gravity environment
data merge entity @s[predicate=expansion:dimension/zero_gravity] {NoGravity:1b}

# initialize the waypoint (1.21.6+)
function expansion:vehicles/buggy/summon/set_waypoint

# align the player with the buggy
execute rotated as @s on passengers if entity @s[tag=exp.buggy_turn] positioned as @s run rotate @s ~ ~

# extract the oxygen data from the item
function expansion:vehicles/buggy/oxygen/merge_scores_from_tank
# extract speed data from the item
scoreboard players set @s exp.speed_mod 10
execute if data entity @s data.ModStorage.speed_mod.components."minecraft:custom_data".value store result score @s exp.speed_mod run data get entity @s data.ModStorage.speed_mod.components."minecraft:custom_data".value