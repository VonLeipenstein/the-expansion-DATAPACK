# >>> generated function callers >>>
# Callers for expansion:blocks/modstation/upgrade/init
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/modstation/gui/buttons/upgrade_button (1 caller) [WARN side/down 3]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.modstation.vehicle_link] on origin run tag @s add exp.being_modified

scoreboard players reset @s exp.bool
execute if function expansion:blocks/modstation/upgrade/spaceship/selected run function expansion:blocks/modstation/upgrade/spaceship/apply_mods/initiate
execute if function expansion:blocks/modstation/upgrade/mech/selected run function expansion:blocks/modstation/upgrade/mech/apply_mods/initiate
execute if function expansion:blocks/modstation/upgrade/buggy/selected run function expansion:blocks/modstation/upgrade/buggy/apply_mods/initiate

# start the upgrade if at least one of the transfers succeeded
execute if score #temp exp.bool matches 1 run scoreboard players set @s exp.timer_1 200
scoreboard players reset @s exp.bool