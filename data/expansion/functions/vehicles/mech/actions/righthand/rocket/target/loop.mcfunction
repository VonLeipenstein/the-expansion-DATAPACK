scoreboard players remove @s exp.max_range 1

execute unless block ~ ~ ~ #expansion:air run scoreboard players set @s exp.max_range 0

execute if score @s exp.max_range matches 0 run function expansion:vehicles/mech/actions/righthand/rocket/target/summon_target

execute if entity @e[type=!#expansion:ignore,distance=..10,limit=1,sort=nearest] run function expansion:vehicles/mech/actions/righthand/rocket/target/lock

execute if score @s exp.max_range matches 1.. positioned ^ ^ ^.5 run function expansion:vehicles/mech/actions/righthand/rocket/target/loop