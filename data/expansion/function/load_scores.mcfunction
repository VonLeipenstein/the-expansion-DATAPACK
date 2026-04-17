# >>> generated function callers >>>
# Callers for expansion:load_scores
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:load (1 caller) [OK same-folder]
# <<< generated function callers <<<

# reset triggers
scoreboard objectives remove exp.rightclick
scoreboard objectives remove exp.jump
scoreboard objectives remove exp.death
scoreboard objectives remove give_guide1

# trigger scoreboards
scoreboard objectives add exp.rightclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add exp.jump minecraft.custom:minecraft.jump
scoreboard objectives add exp.death deathCount
scoreboard objectives add give_guide1 trigger
# general utility
scoreboard objectives add exp.time dummy
scoreboard objectives add exp.bool dummy
scoreboard objectives add exp.delay dummy
scoreboard objectives add exp.value dummy
scoreboard objectives add exp.hold_value dummy
scoreboard objectives add exp.hold_value_alt dummy
scoreboard objectives add exp.percentage dummy
# gravity
scoreboard objectives add exp.gravity dummy
scoreboard objectives add exp.gravity_modifier dummy
scoreboard objectives add exp.gravity_id dummy
scoreboard objectives add exp.mass dummy
# fuel
scoreboard objectives add exp.fuel_level dummy
scoreboard objectives add exp.fuel_max dummy
scoreboard objectives add exp.fuel_efficiency dummy
scoreboard objectives add exp.fuel_percentage dummy
# oxygen
scoreboard objectives add exp.oxygen_lvl dummy
scoreboard objectives add exp.oxygen_max dummy
scoreboard objectives add exp.oxygen_percent dummy
# temperature
scoreboard objectives add exp.heat_resist dummy
scoreboard objectives add exp.cold_resist dummy
scoreboard objectives add exp.temperature dummy
# suits
scoreboard objectives add exp.suit_integrity dummy
scoreboard objectives add exp.armor dummy
# vehicles
scoreboard objectives add exp.engine_thrust dummy
scoreboard objectives add exp.engine_efficiency dummy
scoreboard objectives add exp.speed dummy
scoreboard objectives add exp.weight dummy
scoreboard objectives add exp.speed_mod dummy
scoreboard objectives add exp.speed_max dummy
scoreboard objectives add exp.passenger_count dummy
scoreboard objectives add exp.mech_action_id dummy
scoreboard objectives add exp.mech_action_dur dummy
scoreboard objectives add exp.mech_action_anim dummy
# timers
scoreboard objectives add exp.timer_1 dummy
scoreboard objectives add exp.timer_2 dummy
scoreboard objectives add exp.cooldown dummy
scoreboard objectives add exp.rboots_warmup dummy
scoreboard objectives add exp.rboots_cooldown dummy
scoreboard objectives add exp.portal_cooldown dummy
scoreboard objectives add exp.warmup dummy
# counters
scoreboard objectives add exp.counter_1 dummy
scoreboard objectives add exp.counter_2 dummy
scoreboard objectives add exp.hold_count dummy
# position
scoreboard objectives add exp.origin dummy
scoreboard objectives add exp.destination dummy
scoreboard objectives add exp.dimension dummy
scoreboard objectives add exp.rotation dummy
scoreboard objectives add exp.x dummy
scoreboard objectives add exp.y dummy
scoreboard objectives add exp.z dummy
scoreboard objectives add exp.yaw dummy
scoreboard objectives add exp.pitch dummy
scoreboard objectives add exp.roll dummy
scoreboard objectives add exp.distance dummy
scoreboard objectives add exp.distance_mod dummy
scoreboard objectives add exp.offset dummy
scoreboard objectives add exp.offset_mod dummy
scoreboard objectives add exp.size dummy
scoreboard objectives add exp.size_mod dummy
# pocket space utility
scoreboard objectives add exp.unique_id dummy
# ids
scoreboard objectives add exp.arc_id dummy
scoreboard objectives add exp.pad_id dummy
# weapons/damage
scoreboard objectives add exp.ammo dummy
scoreboard objectives add exp.max_ammo dummy
scoreboard objectives add exp.max_range dummy
# mobs
scoreboard objectives add exp.health dummy
scoreboard objectives add exp.max_health dummy
# dimension checks
scoreboard objectives add exp.dim_test dummy
# solar system generation
scoreboard objectives add exp.gen_success dummy
# gamemode save
scoreboard objectives add exp.gamemode dummy
# math
scoreboard objectives add exp.math dummy
scoreboard objectives add exp.const dummy