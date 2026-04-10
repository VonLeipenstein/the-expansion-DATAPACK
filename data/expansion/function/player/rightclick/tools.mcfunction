# >>> generated function callers >>>
# Callers for expansion:player/rightclick/tools
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - advancement exp_hitbox:rightclick_on_hitbox (1 caller)
# - function expansion:player/rightclick/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

## Tools you can activate in vehicles
# Oxygen system
execute if predicate expansion:holding/items/oxygen_tank run return run function expansion:items/oxygen_tank/use
# Fleet finder
execute if predicate expansion:holding/items/fleet_finder run return run function expansion:items/fleet_finder/use
# Repair kit
execute if predicate expansion:holding/items/repair_kit run return run function expansion:items/repair_kit/use
# Thermometer
execute if predicate expansion:holding/items/thermometer run return run function expansion:items/thermometer/use

## Tools you can't activate inside vehicles
execute if entity @s[tag=exp.inside_vehicle] run return run function expansion:utilities/error_messages/usetool_notinvehicle

# Pet drone
execute if predicate expansion:holding/items/pet_drone run return run function expansion:items/drone_pet/use
# Railgun
execute if predicate expansion:holding/items/railgun run return run function expansion:items/railgun/use
# Cryoblaster
execute if predicate expansion:holding/items/cryoblaster run return run function expansion:items/cryoblaster/use
# Arc_thrower
execute if predicate expansion:holding/items/arc_thrower run return run function expansion:items/arc_thrower/use
# Blaster
execute if predicate expansion:holding/items/blaster run return run function expansion:items/blaster/use
# Cataclysm cannon
execute if predicate expansion:holding/items/cataclysm_cannon run return run function expansion:items/cataclysm_cannon/use
# Rocket launcher
execute if predicate expansion:holding/items/rocket_launcher run return run function expansion:items/rocket_launcher/use
# Rocket parts
execute if predicate expansion:holding/blocks/rocket_part run return run function expansion:utilities/error_messages/try_place_rocket_part
# Cargo Rocket Remote
execute if predicate expansion:holding/items/cargo_rocket_remote run return run function expansion:items/cargo_rocket_remote/use

# Rocket segments
execute if predicate expansion:holding/items/rocket_segment/any run return run function expansion:utilities/error_messages/try_place_rocket_part

