tag @s add exp.found_target

execute unless entity @s[tag=exp.enabled_oxygen] on origin run function expansion:utilities/error_messages/oxygen_detected

execute if score #temp exp.oxygen_max matches 1 run tag @s add exp.enabled_oxygen