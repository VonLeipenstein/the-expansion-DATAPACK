# run the functions for players that are wearing space equipment
execute if entity @s[predicate=expansion:nbt_checks/armor/space_equipment/equipment] run function expansion:global/oxygen_regulation/wearing_equipment

# suffocate players if they aren't wearing space equipment
execute unless entity @s[predicate=expansion:nbt_checks/armor/space_equipment/equipment] run function expansion:global/oxygen_regulation/suffocate
