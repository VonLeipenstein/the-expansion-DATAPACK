# >>> generated function callers >>>
# Callers for expansion:vehicles/mech/actions/input
# Total callers: 6 from 5 source(s)
# Folder rule (function callers): 0/5 honored
# Sources:
# - function expansion:mobs/mech/behavior/movement/wandering/activate (1 caller) [WARN side/down 8]
# - function expansion:mobs/mech/behavior/on_mech (2 callers) [WARN side/down 6]
# - function expansion:mobs/mech/behavior/switch_weapons/init (1 caller) [WARN side/down 7]
# - function expansion:vehicles/mech/click_detection/leftclick (1 caller) [WARN side/down 2]
# - function expansion:vehicles/mech/click_detection/rightclick (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

# stop any actions that are togglable (drills and miniguns)
tag @s[tag=exp.mech_action_toggle] add exp.mech_action_stop

# start any action (based on what the mech is holding in the corresponding hand)
tag @s[tag=!exp.mech_action] add exp.mech_action