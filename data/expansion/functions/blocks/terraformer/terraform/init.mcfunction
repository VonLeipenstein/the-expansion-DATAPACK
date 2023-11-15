# 
execute if score @s exp.counter_1 matches 0 run spreadplayers ~ ~ 0 40 false @s
execute if score @s exp.counter_1 matches 1 run spreadplayers ~ ~ 0 24 false @s
execute if score @s exp.counter_1 matches 0 run kill @s[distance=40..]

execute if predicate expansion:dimension/moon at @s run function expansion:blocks/terraformer/terraform/moon
execute if predicate expansion:dimension/mars at @s run function expansion:blocks/terraformer/terraform/mars

