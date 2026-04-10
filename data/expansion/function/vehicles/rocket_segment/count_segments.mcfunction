# >>> generated function callers >>>
# Callers for expansion:vehicles/rocket_segment/count_segments
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 1/2 honored
# Sources:
# - function expansion:blocks/launch_pad/text_display/diagnostics (1 caller) [WARN side/down 5]
# - function expansion:vehicles/rocket_segment/count_segments (1 caller) [OK same-folder]
# <<< generated function callers <<<

execute if predicate expansion:contents/rocket_segment/top run scoreboard players add #top exp.hold_count 1
execute if predicate expansion:contents/rocket_segment/body run scoreboard players add #body exp.hold_count 1
execute if predicate expansion:contents/rocket_segment/bottom run scoreboard players add #bottom exp.hold_count 1
execute if predicate expansion:contents/rocket_segment/fuel run scoreboard players add #fuel exp.hold_count 1

# recusrively count segments up from the root
execute on passengers if entity @s[type=interaction] on passengers if entity @s[tag=exp.rocket_segment] at @s run function expansion:vehicles/rocket_segment/count_segments