# >>> generated function callers >>>
# Callers for expansion:projectiles/homing_rocket/target/retrieve
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:vehicles/mech/actions/rocket/launch (1 caller) [WARN side/down 7]
# <<< generated function callers <<<

data modify storage expansion:owner data.current_UUID set from entity @s data.rocket_target[0]
data remove entity @s data.rocket_target[0]