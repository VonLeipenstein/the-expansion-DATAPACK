# >>> generated function callers >>>
# Callers for expansion:blocks/planetarium/prepare/link_pivot_to_model
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/planetarium/prepare/pivots (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute on passengers run data modify entity @s[type=minecraft:snowball] Owner set from entity @n[type=item_display,tag=exp.new_planet_display] UUID
execute as @n[type=item_display,tag=exp.new_planet_display] on passengers run data modify entity @s[type=minecraft:snowball] Owner set from storage expansion:planetarium_pivot data.current_UUID

tag @n[type=item_display,tag=exp.new_planet_display] remove exp.new_planet_display