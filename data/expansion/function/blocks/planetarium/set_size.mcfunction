# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/set_size
# Total callers: 4 from 4 source(s)
# Folder rule (function callers): 3/4 honored
# Sources:
# - function expansion:blocks/planetarium/disable_node (1 caller) [OK same-folder]
# - function expansion:blocks/planetarium/enable_node (1 caller) [OK same-folder]
# - function expansion:blocks/planetarium/prepare/initialize_models (1 caller) [WARN side/down 1]
# - function expansion:blocks/planetarium/scale_branches (1 caller) [OK same-folder]
# <<< generated function callers <<<

scoreboard players operation #temp exp.size *= @s exp.size_mod
scoreboard players operation #temp exp.size /= #100 exp.const

# merge hitbox size size
execute on passengers store result entity @s[type=interaction] width float 0.0005 on vehicle run scoreboard players get #temp exp.size
execute on passengers store result entity @s[type=interaction] height float -0.0005 on vehicle run scoreboard players get #temp exp.size

# merge model size
execute store result entity @s transformation.scale[0] float 0.001 run scoreboard players get #temp exp.size
execute store result entity @s transformation.scale[1] float 0.001 run scoreboard players get #temp exp.size
execute store result entity @s transformation.scale[2] float 0.001 run scoreboard players get #temp exp.size