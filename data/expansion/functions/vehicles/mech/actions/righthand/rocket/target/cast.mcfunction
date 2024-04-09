tag @s add exp.homing_rocket

execute positioned ^ ^ ^ rotated ~ ~ run tp @s ^ ^ ^10.5 ~ ~

scoreboard players set @s exp.max_range 300
scoreboard players set @s exp.unique_id -1

execute positioned as @s rotated as @s run function expansion:vehicles/mech/actions/righthand/rocket/target/loop

execute if score @s exp.unique_id matches -1 run scoreboard players set #temp exp.unique_id -1

kill @s