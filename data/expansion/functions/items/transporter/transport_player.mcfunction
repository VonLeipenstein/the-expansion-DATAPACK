tp @p[tag=exp.transporting] ~0.5 128 0.5

execute at @p[tag=exp.transporting] run tp @s ~ ~ ~
scoreboard players set @p[tag=exp.transporting] exp.cooldown 100
tag @p[tag=exp.transporting] add exp.tp_rev_prev
