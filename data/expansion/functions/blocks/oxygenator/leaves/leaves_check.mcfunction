item replace entity @s weapon.mainhand from block ~ ~ ~ container.6
execute unless predicate expansion:nbt_checks/selected_item/leaves run tag @s add exp.leaves_depleted

execute unless entity @s[tag=exp.leaves_depleted] run function expansion:blocks/oxygenator/leaves/leaves_present
execute if entity @s[tag=exp.leaves_depleted] run function expansion:blocks/oxygenator/leaves/leaves_gone

item replace entity @s weapon.mainhand with minecraft:air
