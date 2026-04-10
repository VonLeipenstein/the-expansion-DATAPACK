# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/spin/set_display_offset
# Total callers: 3 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/planetarium/spin/enabled_branch (1 caller) [OK same-folder]
# - function expansion:blocks/planetarium/spin/set_display_offset (2 callers) [OK same-folder]
# <<< generated function callers <<<

tp @s ^ ^ ^

execute if score #temp exp.offset matches 1.. run scoreboard players remove #temp exp.offset 100
execute if score #temp exp.offset matches 1.. positioned ^ ^.1 ^ run return run function expansion:blocks/planetarium/spin/set_display_offset

execute if score #temp exp.offset matches ..1 run scoreboard players add #temp exp.offset 100
execute if score #temp exp.offset matches ..1 positioned ^ ^-.1 ^ run function expansion:blocks/planetarium/spin/set_display_offset