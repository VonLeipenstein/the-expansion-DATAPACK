function animated_java:mech_torso/animations/drill_drill_l/stop

function animated_java:mech_torso/animations/drill_stop_l/play

stopsound @a[distance=..5] ambient expansion:mech.drill.loop

execute on vehicle run scoreboard players set @s exp.mech_left_dur -10