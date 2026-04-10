# >>> generated function callers >>>
# Callers for expansion:blocks/terraformer/terraform/cube
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/terraformer/terraform/main (1 caller) [OK same-folder]
# <<< generated function callers <<<

spreadplayers ~ ~ 0 24 false @s

execute if predicate expansion:dimension/moon at @s run return run function expansion:blocks/terraformer/terraform/moon
execute if predicate expansion:dimension/mars at @s run return run function expansion:blocks/terraformer/terraform/mars

kill @s