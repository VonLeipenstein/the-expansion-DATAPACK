# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/summon/setup
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/summon/init (1 caller) [OK same-folder]
# <<< generated function callers <<<

function expansion:blocks/set_rotation

# summon the animated java rigs
execute positioned ~ ~1.48 ~ rotated as @s run function animated_java:mech_legs/summon {args: {}}
execute positioned ~ ~1.48 ~ rotated as @s run function animated_java:mech_torso/summon {args:{variant: 'empty_both'}}

# mount the animated java rigs to the entity stack
execute positioned ~ ~1.48 ~ rotated as @s run ride @e[type=item_display,tag=aj.mech_legs.root,distance=..0.01,limit=1] mount @s
execute positioned ~ ~1.48 ~ rotated as @s run ride @e[type=item_display,tag=aj.mech_torso.root,distance=..0.01,limit=1] mount @s

# equip stored modules
execute on passengers if entity @s[tag=exp.left_arm_control] store result score @s exp.mech_action_id run data get entity @s SelectedItem.components."minecraft:custom_data".mech_left_id
execute on passengers if entity @s[tag=exp.right_arm_control] store result score @s exp.mech_action_id run data get entity @s SelectedItem.components."minecraft:custom_data".mech_right_id
execute on passengers if entity @s[tag=exp.mech_arm_controller] run function expansion:vehicles/mech/summon/equip_modules

# set the idle animations
execute on passengers if entity @s[tag=aj.mech_legs.root] run function animated_java:mech_legs/animations/idle/play
execute on passengers if entity @s[tag=aj.mech_torso.root] run function animated_java:mech_torso/animations/idle/play

# set max jetpack fuel
scoreboard players set @s exp.fuel_max 40

# set health values
scoreboard players set @s exp.health 200
scoreboard players operation @s exp.max_health = @s exp.health

tag @s remove exp.new_vehicle