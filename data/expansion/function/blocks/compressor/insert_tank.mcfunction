# >>> generated function callers >>>
# Callers for expansion:blocks/compressor/insert_tank
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/compressor/tank_swap (1 caller) [OK same-folder]
# <<< generated function callers <<<

# remove the players handheld item in the case of a normal swap
item replace entity @s container.0 from entity @p[tag=exp.clicked] weapon.mainhand expansion:utility/count_to_1
item modify entity @p[tag=exp.clicked] weapon.mainhand expansion:utility/reduce_count

# extract the max tank level upon insertion
execute store result score @s exp.fuel_max run data get entity @s item.components."minecraft:custom_data".oxygen.max

execute if items entity @s container.0 *[minecraft:custom_data~{exp_item:{name:"oxygen_tank"}}] rotated as @s run function expansion:blocks/compressor/display_tank

# intiate the compression process
function expansion:blocks/compressor/compress/start

# remove the custom name from the compressor
execute on passengers if entity @s[type=interaction] run data merge entity @s {CustomName:""}

