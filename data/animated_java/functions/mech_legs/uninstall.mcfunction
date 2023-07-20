scoreboard objectives remove aj.i
scoreboard objectives remove aj.id
scoreboard objectives remove aj.tween_time
scoreboard objectives remove aj.anim_time
scoreboard objectives remove aj.life_time
scoreboard objectives remove aj.mech_legs.export_version
scoreboard objectives remove aj.mech_legs.rig_loaded
scoreboard objectives remove aj.mech_legs.animation.walking.local_anim_time
scoreboard objectives remove aj.mech_legs.animation.walking_backwards.local_anim_time
scoreboard objectives remove aj.mech_legs.animation.idle.local_anim_time
scoreboard objectives remove aj.mech_legs.animation.walking.loop_mode
scoreboard objectives remove aj.mech_legs.animation.walking_backwards.loop_mode
scoreboard objectives remove aj.mech_legs.animation.idle.loop_mode
tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},[{"text":"INFO ℹ","color":"green"},{"text":" > ","color":"gray"},{"text":"The mech_legs Rig has been uninstalled successfully.\n"},{"text":"Please remove the Rig's functions from the datapack before reloading.","color":"gray"}]]