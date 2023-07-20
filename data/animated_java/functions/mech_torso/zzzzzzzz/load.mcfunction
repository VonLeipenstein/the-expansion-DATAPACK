scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.mech_torso.export_version dummy
scoreboard objectives add aj.mech_torso.rig_loaded dummy
scoreboard objectives add aj.mech_torso.animation.walking.local_anim_time dummy
scoreboard objectives add aj.mech_torso.animation.walking_backwards.local_anim_time dummy
scoreboard objectives add aj.mech_torso.animation.idle.local_anim_time dummy
scoreboard objectives add aj.mech_torso.animation.swing.local_anim_time dummy
scoreboard objectives add aj.mech_torso.animation.walking.loop_mode dummy
scoreboard objectives add aj.mech_torso.animation.walking_backwards.loop_mode dummy
scoreboard objectives add aj.mech_torso.animation.idle.loop_mode dummy
scoreboard objectives add aj.mech_torso.animation.swing.loop_mode dummy
scoreboard players set $aj.mech_torso.animation.walking aj.id 0
scoreboard players set $aj.mech_torso.animation.walking_backwards aj.id 1
scoreboard players set $aj.mech_torso.animation.idle aj.id 2
scoreboard players set $aj.mech_torso.animation.swing aj.id 3
scoreboard players set $aj.mech_torso.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.mech_torso.export_version aj.i 71549946
scoreboard players reset * aj.mech_torso.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.mech_torso.root] run function animated_java:mech_torso/zzzzzzzz/on_load