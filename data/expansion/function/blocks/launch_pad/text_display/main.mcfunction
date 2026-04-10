# >>> generated function callers >>>
# Callers for expansion:blocks/launch_pad/text_display/main
# Total callers: 1 from 1 source(s)
# Folder rule (function callers): 1/1 honored
# Sources:
# - function expansion:blocks/launch_pad/main (1 caller) [OK above +1]
# <<< generated function callers <<<

execute if predicate expansion:periodic/5 if entity @s[tag=exp.rocket_diagnostics] run function expansion:blocks/launch_pad/text_display/stats

execute if predicate expansion:periodic/5 if entity @s[tag=exp.rocket_origin] run function expansion:blocks/launch_pad/text_display/origin

execute if predicate expansion:periodic/5 if entity @s[tag=exp.rocket_destination] run function expansion:blocks/launch_pad/text_display/destination

execute if predicate expansion:periodic/5 if entity @s[tag=exp.rocket_trip] run function expansion:blocks/launch_pad/text_display/trip