function animated_java:mech_torso/animations/drill_drill_r/stop

function animated_java:mech_torso/animations/drill_stop_r/play

stopsound @a[distance=..5] ambient expansion:mech.drill.loop

execute on vehicle run scoreboard players set @s exp.mech_right_dur -10