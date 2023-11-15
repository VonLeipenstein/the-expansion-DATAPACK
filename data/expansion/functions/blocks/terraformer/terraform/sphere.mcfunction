spreadplayers ~ ~ 0 40 false @s
kill @s[distance=40..]

execute if predicate expansion:dimension/moon at @s run function expansion:blocks/terraformer/terraform/moon
execute if predicate expansion:dimension/mars at @s run function expansion:blocks/terraformer/terraform/mars

