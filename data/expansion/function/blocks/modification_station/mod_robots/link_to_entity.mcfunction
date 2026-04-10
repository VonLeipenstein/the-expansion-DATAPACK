# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/mod_robots/link_to_entity
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/modification_station/place/setup (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

execute on passengers if entity @s[tag=exp.modstation.bot_link] on origin run function expansion:blocks/modification_station/place/link_summon
data remove storage expansion:owner data