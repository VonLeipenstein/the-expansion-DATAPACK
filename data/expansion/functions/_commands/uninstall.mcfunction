# Removes all the scores, disables functions and revokes advancements
scoreboard objectives remove exp.rightclick
scoreboard objectives remove exp.jump
scoreboard objectives remove exp.death
scoreboard objectives remove give_guide1
scoreboard objectives remove exp.time
scoreboard objectives remove exp.bool
scoreboard objectives remove exp.delay
scoreboard objectives remove exp.value
scoreboard objectives remove exp.hold_value
scoreboard objectives remove exp.hold_value_alt
scoreboard objectives remove exp.sneak_delay
scoreboard objectives remove exp.gravity_delay
scoreboard objectives remove exp.fuel_level
scoreboard objectives remove exp.fuel_max
scoreboard objectives remove exp.fuel_percentage
scoreboard objectives remove exp.oxygen_level
scoreboard objectives remove exp.oxygen_max
scoreboard objectives remove exp.oxygen_percent
scoreboard objectives remove exp.speed
scoreboard objectives remove exp.passenger_count
scoreboard objectives remove exp.mech_left_id
scoreboard objectives remove exp.mech_right_id
scoreboard objectives remove exp.timer_1
scoreboard objectives remove exp.timer_2
scoreboard objectives remove exp.cooldown
scoreboard objectives remove exp.rboots_cooldown
scoreboard objectives remove exp.warmup
scoreboard objectives remove exp.counter_1
scoreboard objectives remove exp.counter_2
scoreboard objectives remove exp.hold_count
scoreboard objectives remove exp.x
scoreboard objectives remove exp.y
scoreboard objectives remove exp.z
scoreboard objectives remove exp.unique_id
scoreboard objectives remove exp.ammo
scoreboard objectives remove exp.max_range
scoreboard objectives remove exp.distance
scoreboard objectives remove exp.dim_test
scoreboard objectives remove exp.gen_success
scoreboard objectives remove exp.gamemode
scoreboard objectives remove exp.equipment_cmd
scoreboard objectives remove exp.spaceship_cmd
scoreboard objectives remove exp.math
scoreboard objectives remove exp.wasd
scoreboard objectives remove exp.wasd.x
scoreboard objectives remove exp.wasd.z

function expansion:_commands/functions/disable

execute as @a run advancement revoke @s from expansion:progression/root