execute if predicate expansion:holding/vehicles/moon_buggy run function expansion:vehicles/buggy/summon/init
execute if predicate expansion:holding/vehicles/spaceship run function expansion:vehicles/spaceship/summon/init
execute if predicate expansion:holding/vehicles/rocket run function expansion:vehicles/rocket/summon/init
execute if predicate expansion:holding/vehicles/lunar_module run function expansion:vehicles/lunar_module/summon/init
execute if predicate expansion:holding/vehicles/return_capsule run function expansion:vehicles/return_capsule/summon/init
execute if predicate expansion:holding/vehicles/mech run function expansion:vehicles/mech/summon/init
execute if predicate expansion:holding/vehicles/cargo_rocket run return run function expansion:utilities/error_messages/try_place_cargorocket

# remove one from the held item count
item modify entity @s[gamemode=!creative] weapon.mainhand expansion:utility/reduce_count

# sound
playsound block.metal.place block @s ~ ~ ~
