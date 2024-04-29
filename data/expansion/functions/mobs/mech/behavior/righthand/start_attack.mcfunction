execute unless score @s exp.mech_right_cooldown matches 1.. run function expansion:vehicles/mech/click_detection/righthand

scoreboard players set @s exp.mech_right_cooldown 40

tag @s remove exp.equipped_weapon_right