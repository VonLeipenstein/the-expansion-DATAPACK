# >>> generated function callers >>>
# Callers for expansion:blocks/assembler/assembling
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/assembler/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if score @s exp.timer_1 matches 1 run function expansion:blocks/assembler/stop_crafting

execute on passengers at @s run particle firework ^ ^ ^-1.5 0.1 0.1 0.1 0.1 1
execute on passengers at @s run particle campfire_cosy_smoke ^ ^ ^-1.5 0.1 0.1 0.1 0.01 1

scoreboard players remove @s exp.timer_1 1