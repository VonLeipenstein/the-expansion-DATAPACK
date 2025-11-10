scoreboard players set @s exp.timer_1 200

data merge entity @s {transformation:{scale:[0,0,0]}}
data merge entity @s {transformation:{scale:[1,1,1]},interpolation_duration:200,start_interpolation:-1}

item modify block ~ ~ ~ container.1 expansion:utility/reduce_count
item modify block ~ ~ ~ container.2 expansion:utility/reduce_count
item modify block ~ ~ ~ container.3 expansion:utility/reduce_count
item modify block ~ ~ ~ container.4 expansion:utility/reduce_count

item modify block ~ ~ ~ container.10 expansion:utility/reduce_count
item modify block ~ ~ ~ container.11 expansion:utility/reduce_count
item modify block ~ ~ ~ container.12 expansion:utility/reduce_count
item modify block ~ ~ ~ container.13 expansion:utility/reduce_count

item modify block ~ ~ ~ container.19 expansion:utility/reduce_count
item modify block ~ ~ ~ container.20 expansion:utility/reduce_count
item modify block ~ ~ ~ container.21 expansion:utility/reduce_count
item modify block ~ ~ ~ container.22 expansion:utility/reduce_count

execute on passengers if entity @s[tag=aj.assembler.root] run function animated_java:assembler/animations/ring_loop/play