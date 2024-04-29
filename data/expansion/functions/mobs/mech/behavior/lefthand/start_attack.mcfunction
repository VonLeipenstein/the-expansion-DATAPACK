execute unless score @s exp.mech_left_cooldown matches 1.. run function expansion:vehicles/mech/click_detection/lefthand

scoreboard players set @s exp.mech_left_cooldown 40

tag @s remove exp.equipped_weapon_left