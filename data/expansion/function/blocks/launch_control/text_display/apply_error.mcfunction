# Errors for missing pieces
execute unless score #bottom exp.hold_count matches 1.. run return run function expansion:blocks/launch_control/text_display/errors/missing_engines
execute unless score #top exp.hold_count matches 1.. run return run function expansion:blocks/launch_control/text_display/errors/missing_nose_cone
execute unless score #fuel exp.hold_count matches 1.. run return run function expansion:blocks/launch_control/text_display/errors/missing_fuel

# Error if range is less than distance
execute if score #stat exp.max_range < #destination exp.distance run return run function expansion:blocks/launch_control/text_display/errors/range

# Error when weight exceeds thrust
execute if score #origin exp.weight > #stat exp.engine_thrust run return run function expansion:blocks/launch_control/text_display/errors/weight

# Error when Fuel Segment is present without tank
execute if score #stat exp.fuel_max matches 0 if score #fuel exp.hold_count matches 1.. run return run function expansion:blocks/launch_control/text_display/errors/fuel_tank_missing

# Error when not enough fuel capacity to launch
execute if score #stat exp.fuel_max < #origin_total exp.fuel_level run return run function expansion:blocks/launch_control/text_display/errors/fuel_capacity

# Error when not enough fuel to launch
execute if score #stat exp.fuel_level < #origin_total exp.fuel_level run return run function expansion:blocks/launch_control/text_display/errors/fuel_level