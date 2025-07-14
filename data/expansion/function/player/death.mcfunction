# exit vehicles upon death
execute if entity @s[tag=exp.inside_spaceship] run function expansion:vehicles/spaceship/exits/passenger
execute if entity @s[tag=exp.inside_module] run function expansion:vehicles/lunar_module/exit/init
execute if entity @s[tag=exp.inside_rocket] run function expansion:vehicles/rocket/exit/init
execute if entity @s[tag=exp.inside_buggy] run function expansion:vehicles/buggy/exit/init
execute if entity @s[tag=exp.inside_capsule] run function expansion:vehicles/return_capsule/exit

# dismiss the drone pet
execute if entity @s[tag=exp.has_active_drone] run function expansion:mobs/drone_pet/force_dismiss

# reset gravity
function expansion:mechanics/gravity/remove_all

# reset the scoreboard
scoreboard players set @s exp.death -20