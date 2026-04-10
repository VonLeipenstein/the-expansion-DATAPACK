# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/summon/equip_modules
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:vehicles/mech/summon/setup (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute unless score @s exp.mech_action_id matches 1.. run function expansion:vehicles/mech/actions/punch/equip
execute if score @s exp.mech_action_id matches 1 run function expansion:vehicles/mech/actions/swing/equip
execute if score @s exp.mech_action_id matches 2 run function expansion:vehicles/mech/actions/shoot/equip
execute if score @s exp.mech_action_id matches 3 run function expansion:vehicles/mech/actions/rocket/equip
execute if score @s exp.mech_action_id matches 4 run function expansion:vehicles/mech/actions/drill/equip