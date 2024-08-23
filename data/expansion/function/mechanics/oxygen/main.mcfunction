# run the functions for players that are wearing space equipment
execute if entity @s[predicate=expansion:nbt_checks/armor/space_equipment/equipment] run return run function expansion:mechanics/oxygen/wearing_equipment

# suffocate players if they aren't wearing space equipment
execute if entity @s[gamemode=!creative,gamemode=!spectator,tag=!exp.has_oxygen,tag=!exp.generator,tag=!exp.inside_vehicle] run function expansion:mechanics/oxygen/suffocate
