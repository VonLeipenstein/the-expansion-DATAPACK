# >>> generated function callers >>>
# Callers for expansion:blocks/compressor/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute unless block ~ ~ ~ minecraft:cobblestone run function expansion:blocks/compressor/destroy

execute if score @s exp.timer_1 matches 1.. run function expansion:blocks/compressor/compress/main