# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/enable_node
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/planetarium/spin/enabled_branch (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

tag @s remove exp.disabled_node

scoreboard players operation #temp exp.size = @s exp.size
function expansion:blocks/planetarium/set_size

# reset text display
execute on passengers if entity @s[tag=exp.planetarium_text_display] run function expansion:blocks/planetarium/prepare/planet_names
