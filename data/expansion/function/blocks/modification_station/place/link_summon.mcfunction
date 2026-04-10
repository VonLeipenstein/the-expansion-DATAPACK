# >>> generated function callers >>>
# Callers for expansion:blocks/modification_station/place/link_summon
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 0/1 honored
# Sources:
# - function expansion:blocks/modification_station/mod_robots/link_to_entity (1 caller) [WARN side/down 2]
# <<< generated function callers <<<

tag @s add exp.new_bot
data modify storage expansion:owner data.current_UUID set from storage expansion:owner data.store_UUID
execute at @s summon snowball run function expansion:blocks/modification_station/place/link_origin
tag @s remove exp.new_bot