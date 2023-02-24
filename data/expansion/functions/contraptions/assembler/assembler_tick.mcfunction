execute unless block ~ ~ ~ minecraft:barrel run function expansion:contraptions/assembler/destroy

execute positioned ~ ~ ~ if entity @p[distance=..6] run function expansion:contraptions/assembler/interaction

execute if score @s exp.timer_1 matches 1.. run function expansion:contraptions/assembler/assembling

execute positioned ~ ~ ~ if score @s exp.timer_1 matches 1 run function expansion:contraptions/assembler/stop_crafting