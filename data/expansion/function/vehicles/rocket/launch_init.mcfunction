# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket/launch_init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/rocket/click_detection/buttons/launch_button_push (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# check for an obsidian launchpad
execute unless function expansion:vehicles/rocket/has_launchpad on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] run return run function expansion:utilities/error_messages/launchpad

# check if the rocket is fully fueled
execute unless function expansion:vehicles/rocket/pilot_has_enough_fuel on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] run return run function expansion:utilities/error_messages/low_fuel

# check if the player is wearing a spacesuit
execute on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] unless entity @s[predicate=expansion:armor/all] run return run function expansion:utilities/error_messages/equip_space_equipment

# check if the player has an oxygen tank
execute on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] unless items entity @s container.* *[custom_data~{exp_item:{name:"oxygen_tank"}}] run return run function expansion:utilities/error_messages/bring_oxygen_tank

# check if the player has a repair kit
execute unless function expansion:vehicles/rocket/pilot_has_repair_kits on passengers if entity @s[tag=exp.rocket_seat] on passengers if entity @s[type=player] run return run function expansion:utilities/error_messages/bring_repair_kit

# if all else succeeds, start the launch
scoreboard players set @s exp.timer_2 270
execute if score @s exp.fuel_level = @s exp.fuel_max run scoreboard players set @s exp.timer_2 230