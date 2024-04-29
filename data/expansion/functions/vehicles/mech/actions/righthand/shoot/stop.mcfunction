function animated_java:mech_torso/animations/gatling_shooting_r/stop

function animated_java:mech_torso/animations/gatling_stop_r/play

execute on vehicle run scoreboard players set @s exp.mech_right_dur -17

playsound expansion:mech.minigun.spinoff ambient @a ~ ~ ~ 0.5
stopsound @a ambient expansion:mech.minigun.loop

stopsound @a ambient expansion:mech.minigun.warmup