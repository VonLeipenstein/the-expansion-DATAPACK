# burn players without protection
execute unless predicate expansion:nbt_checks/armor/space_equipment/cooling if entity @s[gamemode=!creative,gamemode=!spectator,tag=!exp.has_oxygen,tag=!exp.generator,tag=!exp.inside_vehicle] run function expansion:mechanics/temperature/burn

# venus lightning
execute if predicate expansion:dimension/venus if predicate expansion:chance/0005_chance summon minecraft:marker run function expansion:mechanics/events/venus/lightning
