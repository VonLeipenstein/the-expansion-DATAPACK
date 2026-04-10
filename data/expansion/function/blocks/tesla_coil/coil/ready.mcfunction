# >>> generated function callers >>>
# Callers for expansion:blocks/tesla_coil/coil/ready
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/tesla_coil/coil/active (1 caller) [OK same-folder]
# <<< generated function callers <<<

# choose a target and cast a zap to it
execute if predicate expansion:periodic/10 if function expansion:blocks/tesla_coil/coil/choose_target run return run function expansion:blocks/tesla_coil/coil/add_target

# idle particle
execute if predicate expansion:periodic/2 if predicate expansion:chance/025_chance positioned ~ ~2 ~ summon marker run function expansion:blocks/tesla_coil/coil/idle_zaps
particle minecraft:electric_spark ~ ~1.9 ~ 0.3 0.1 0.3 0.1 2 force