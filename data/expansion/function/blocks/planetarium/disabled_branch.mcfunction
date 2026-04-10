# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/disabled_branch
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/planetarium/spin/displays (1 caller) [WARN side/down 1]
# <<< generated function callers <<<

tp @s[tag=!exp.planetarium_freemove] ~ ~ ~
rotate @s[tag=!exp.planetarium_freemove] ~ ~

execute unless entity @s[tag=exp.disabled_node] run function expansion:blocks/planetarium/disable_node