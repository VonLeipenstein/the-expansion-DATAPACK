execute if predicate expansion:contents/rocket_segment/top run scoreboard players add #top exp.hold_count 1
execute if predicate expansion:contents/rocket_segment/body run scoreboard players add #body exp.hold_count 1
execute if predicate expansion:contents/rocket_segment/bottom run scoreboard players add #bottom exp.hold_count 1
execute if predicate expansion:contents/rocket_segment/fuel run scoreboard players add #fuel exp.hold_count 1

# recusrively count segments up from the root
execute on passengers if entity @s[type=interaction] on passengers if entity @s[tag=exp.rocket_segment] at @s run function expansion:vehicles/rocket_segment/count_segments