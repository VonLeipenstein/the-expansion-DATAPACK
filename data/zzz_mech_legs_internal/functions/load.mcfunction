scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.mech_legs.export_version dummy
scoreboard objectives add aj.mech_legs.rig_loaded dummy
scoreboard objectives add aj.mech_legs.animation.walking.local_anim_time dummy
scoreboard objectives add aj.mech_legs.animation.walking.loop_mode dummy
scoreboard players set $aj.mech_legs.animation.walking aj.id 0
scoreboard players set $aj.mech_legs.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.default_interpolation_duration aj.i 1
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.mech_legs.export_version aj.i -1274793714
scoreboard players reset * aj.mech_legs.rig_loaded
execute as @e[type=#mech_legs:aj_root,tag=aj.mech_legs.root] run function zzz_mech_legs_internal:on_load