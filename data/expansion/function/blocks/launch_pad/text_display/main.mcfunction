execute if predicate expansion:periodic/10 if entity @s[tag=exp.rocket_diagnostics] run function expansion:blocks/launch_pad/text_display/stats

#execute if predicate expansion:periodic/5 if entity @s[tag=exp.rocket_destination] run function expansion:blocks/launch_pad/text_display/destination

execute if predicate expansion:periodic/5 if entity @s[tag=exp.rocket_trip] run function expansion:blocks/launch_pad/text_display/trip