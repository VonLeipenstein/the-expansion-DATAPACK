scoreboard players remove @s exp.timer_1 1

particle campfire_signal_smoke ~ ~1 ~ 0 0 0 0.01 2 force
particle flame ~ ~1 ~ 0 0 0 0.01 5 force

execute if entity @s[scores={exp.timer_1=..200}] run data merge entity @s {Motion:[0.0,0.1,0.0]}
execute if entity @s[scores={exp.timer_1=..190}] run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute if entity @s[scores={exp.timer_1=..180}] run data merge entity @s {Motion:[0.0,0.3,0.0]}
execute if entity @s[scores={exp.timer_1=..170}] run data merge entity @s {Motion:[0.0,0.4,0.0]}
execute if entity @s[scores={exp.timer_1=..160}] run data merge entity @s {Motion:[0.0,0.6,0.0]}
execute if entity @s[scores={exp.timer_1=..150}] run data merge entity @s {Motion:[0.0,1.0,0.0]}
execute if entity @s[scores={exp.timer_1=..140}] run data merge entity @s {Motion:[0.0,2.0,0.0]}
execute if entity @s[scores={exp.timer_1=..130}] run data merge entity @s {Motion:[0.0,3.0,0.0]}
execute if entity @s[scores={exp.timer_1=..120}] run data merge entity @s {Motion:[0.0,4.0,0.0]}
execute if entity @s[scores={exp.timer_1=..110}] run data merge entity @s {Motion:[0.0,5.0,0.0]}

# remove the forceloaded chunk of the beacon
execute if score @s exp.timer_1 matches 20 at @s if entity @s[tag=exp.returning] run forceload remove ~ ~
execute if score @s exp.timer_1 matches 20 in expansion:transporter_utility run tp @s 0 0 0

# transport the rocket which is no in the utility dimension to the target destination
execute if score @s exp.timer_1 matches 0 run function expansion:blocks/launch_pad/rocket/transport