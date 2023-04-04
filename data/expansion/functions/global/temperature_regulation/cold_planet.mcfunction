execute unless predicate expansion:nbt_checks/armor/space_equipment/warming if entity @s[gamemode=!creative,gamemode=!spectator,tag=!exp.has_oxygen,tag=!exp.generator,tag=!exp.inside_vehicle] run function expansion:global/temperature_regulation/freeze

# give players water breathing on europa
execute if predicate expansion:dimension/europa anchored eyes if block ~ ~ ~ minecraft:water run effect give @s water_breathing 1 1 true
