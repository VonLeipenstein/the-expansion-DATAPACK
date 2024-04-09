# walking animation control
execute unless score .s exp.wasd matches 1.. if function expansion:vehicles/mech/propulsion/holds_wasd if entity @s[tag=!exp.mech_walking] run function expansion:vehicles/mech/anim_control/start_walking
execute unless score .w exp.wasd matches 1.. unless score .a exp.wasd matches 1 unless score .d exp.wasd matches 1.. if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/stop_walking
execute if score .s exp.wasd matches 1.. if entity @s[tag=!exp.mech_walking_back] run function expansion:vehicles/mech/anim_control/start_walking_back
execute unless score .s exp.wasd matches 1.. if entity @s[tag=exp.mech_walking_back] run function expansion:vehicles/mech/anim_control/stop_walking_back

# during attacks
execute if entity @s[tag=exp.mech.action.left] run function expansion:vehicles/mech/actions/lefthand/main
execute if entity @s[tag=exp.mech.action.right] run function expansion:vehicles/mech/actions/righthand/main

# movement
execute if function expansion:vehicles/mech/propulsion/holds_wasd unless predicate expansion:dimension/zero_gravity rotated ~ 0 align y run function expansion:vehicles/mech/propulsion/drive

# wandering trader shenanigans
effect give @s invisibility 1 1 true
item replace entity @s weapon.mainhand with air