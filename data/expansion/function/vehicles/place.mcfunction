# ---run from expansion:functions/global/global_rightclick/vehicles--- 

# summon new buggy
execute if predicate expansion:nbt_checks/selected_item/vehicles/moon_buggy run function expansion:vehicles/buggy/summon/init

# summon new spaceship
execute if predicate expansion:nbt_checks/selected_item/vehicles/spaceship run function expansion:vehicles/spaceship/summon/init

# summon new rocket
execute if predicate expansion:nbt_checks/selected_item/vehicles/rocket run function expansion:vehicles/rocket/summon/init

# summon new lunar module
execute if predicate expansion:nbt_checks/selected_item/vehicles/lunar_module run function expansion:vehicles/lunar_module/summon/init

# summon new return capsule
execute if predicate expansion:nbt_checks/selected_item/vehicles/return_capsule run function expansion:vehicles/return_capsule/summon/init

# summon new mech
execute if predicate expansion:nbt_checks/selected_item/vehicles/mech run function expansion:vehicles/mech/summon/init

# remove the tag given to newly spawned vehicles
tag @e[type=minecraft:armor_stand,tag=exp.new_vehicle,limit=1,sort=nearest] remove exp.new_vehicle

# remove the hand item for non-creative players
item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:air

# sound
playsound block.metal.place block @s ~ ~ ~
