# walking animation control
execute unless score .s exp.wasd matches 1.. if function expansion:vehicles/mech/propulsion/holds_wasd if entity @s[tag=!exp.mech_walking] run function expansion:vehicles/mech/anim_control/start_walking
execute unless score .w exp.wasd matches 1.. unless score .a exp.wasd matches 1 unless score .d exp.wasd matches 1.. if entity @s[tag=exp.mech_walking] run function expansion:vehicles/mech/anim_control/stop_walking
execute if score .s exp.wasd matches 1.. if entity @s[tag=!exp.mech_walking_back] run function expansion:vehicles/mech/anim_control/start_walking_back
execute unless score .s exp.wasd matches 1.. if entity @s[tag=exp.mech_walking_back] run function expansion:vehicles/mech/anim_control/stop_walking_back

# during attacks
execute if entity @s[tag=exp.mech.action.left] run function expansion:vehicles/mech/actions/lefthand/main
execute if entity @s[tag=exp.mech.action.right] run function expansion:vehicles/mech/actions/righthand/main

# add to the duration scores if no attack is active(used for the animation spindown of the drills and gatling gun)
execute unless entity @s[tag=exp.mech.action.left] if score @s exp.mech_left_dur matches ..-1 run scoreboard players add @s exp.mech_left_dur 1
execute unless entity @s[tag=exp.mech.action.right] if score @s exp.mech_right_dur matches ..-1 run scoreboard players add @s exp.mech_right_dur 1

# resume walking animations if no armo animations are playing
execute if score @s exp.mech_left_dur matches 0 run function expansion:vehicles/mech/anim_control/resume_walking_left
execute if score @s exp.mech_right_dur matches 0 run function expansion:vehicles/mech/anim_control/resume_walking_right

# remove cooldown score
scoreboard players remove @s[scores={exp.mech_left_cooldown=1..}] exp.mech_left_cooldown 1
scoreboard players remove @s[scores={exp.mech_right_cooldown=1..}] exp.mech_right_cooldown 1

# movement
execute if function expansion:vehicles/mech/propulsion/holds_wasd unless predicate expansion:dimension/zero_gravity rotated ~ 0 align y run function expansion:vehicles/mech/propulsion/drive