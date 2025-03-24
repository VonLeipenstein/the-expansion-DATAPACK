# count the total number of passengers, if it is 0 it means that no new markers were able to be made, 
# meaning that the oxygenation was completed successfully
execute on vehicle run scoreboard players add @s exp.hold_value 1

# expand new markers
execute if predicate expansion:periodic/2 if entity @s[tag=exp.new_scanner_link] run return run function expansion:blocks/oxygenator/oxygenate/fill_space/on_snowballs

# decay old markers if no new markers are nearby
execute unless entity @s[tag=exp.new_scanner_link] run return run function expansion:blocks/oxygenator/oxygenate/fill_space/add_decay
