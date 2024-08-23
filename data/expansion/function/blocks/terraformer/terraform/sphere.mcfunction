spreadplayers ~ ~ 0 40 false @s

execute unless entity @s[distance=..40] run return run kill @s
execute if predicate expansion:dimension/moon at @s run return run function expansion:blocks/terraformer/terraform/moon
execute if predicate expansion:dimension/mars at @s run return run function expansion:blocks/terraformer/terraform/mars

kill @s