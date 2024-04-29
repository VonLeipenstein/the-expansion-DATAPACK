# stop attacks that need a manual stop trigger like the gatling gun
execute if score @s exp.mech_left_dur matches 100.. run function expansion:mobs/mech/behavior/lefthand/stop_attack
execute if score @s exp.mech_right_dur matches 100.. run function expansion:mobs/mech/behavior/righthand/stop_attack

# switch weapons if no attack or cooldown is currently active
execute if predicate expansion:chance/050_chance unless entity @s[tag=exp.equipped_weapon_left] unless score @s exp.mech_left_dur matches 1.. unless score @s exp.mech_left_cooldown matches 1.. run function expansion:mobs/mech/behavior/lefthand/equip_weapon
execute if predicate expansion:chance/050_chance unless entity @s[tag=exp.equipped_weapon_right] unless score @s exp.mech_right_dur matches 1.. unless score @s exp.mech_right_cooldown matches 1.. run function expansion:mobs/mech/behavior/righthand/equip_weapon

# initiate attacks if no attack or cooldown is currently active
execute unless score @s exp.mech_left_dur matches 1.. unless score @s exp.mech_left_cooldown matches 1.. run function expansion:mobs/mech/behavior/lefthand/start_attack
execute unless score @s exp.mech_right_dur matches 1.. unless score @s exp.mech_right_cooldown matches 1.. run function expansion:mobs/mech/behavior/righthand/start_attack

# follow the player around on a timer
function expansion:mobs/mech/behavior/follow_player/main

# detect when the mech is walking to play the walking animation
execute store result score @s exp.x run data get entity @s Motion[0] 100000
execute store result score @s exp.z run data get entity @s Motion[2] 100000
scoreboard players operation @s exp.x += @s exp.z
execute unless score @s exp.x matches 0 on passengers on passengers run scoreboard players set .w exp.wasd 1

# freeze the movement of the mech during certain attacks