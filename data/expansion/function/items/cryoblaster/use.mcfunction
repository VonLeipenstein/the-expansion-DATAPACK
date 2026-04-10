# >>> generated function callers >>>
# Callers for expansion:items/cryoblaster/use
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:player/rightclick/tools (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# mode chooser
execute if predicate expansion:utility/sneak run return run function expansion:items/cryoblaster/switch_modes

# shoot or reload
function expansion:items/cryoblaster/get_ammo
function expansion:items/cryoblaster/get_mode

# if the gun has insufficient ammo, attempt to reload
execute if score #temp exp.ammo < #temp exp.hold_value_alt run function expansion:items/cryoblaster/reload/check

# if the ammo is more than the required ammo, use an action
execute if score #temp exp.ammo >= #temp exp.hold_value_alt run function expansion:items/cryoblaster/action

# in any case, store the current ammo in the gun
function expansion:items/cryoblaster/store_ammo
scoreboard players reset #temp exp.hold_value_alt