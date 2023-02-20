execute unless block ^ ^ ^1 minecraft:barrel run function expansion:contraptions/assembler/destroy

execute positioned ^ ^ ^1 if entity @p[distance=..6] run function expansion:contraptions/assembler/interaction

execute if score @s exp.timer_1 matches 1.. run function expansion:contraptions/assembler/assembling

execute positioned ^ ^ ^1 if score @s exp.timer_1 matches 1 run function expansion:contraptions/assembler/stop_crafting