# >>> generated function callers >>>
# Callers for expansion:blocks/compressor/compress/insert_check
# Total callers: 2 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/compressor/compress/main (2 callers) [OK same-folder]
# <<< generated function callers <<<

# extract parameters
execute store result score #target exp.oxygen_lvl run data get entity @s item.components."minecraft:custom_data".oxygen.lvl
execute store result score #target exp.oxygen_max run data get entity @s item.components."minecraft:custom_data".oxygen.max

# reset oxygen lvl, this has to be replenished by a terraformer or oxygenator next tick
scoreboard players set @s exp.oxygen_lvl 0

# pressurize tank there is one which is not full
execute if score #target exp.oxygen_lvl < #target exp.oxygen_max unless score #target exp.oxygen_max matches ..0 run return run function expansion:blocks/compressor/compress/insert_oxygen

# if conditions arent met, stop compressing (mainly the animation)
scoreboard players set #temp exp.bool 1