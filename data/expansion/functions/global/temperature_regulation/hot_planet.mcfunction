execute unless entity @s[predicate=expansion:nbt_checks/armor/space_equipment/cooling] run function expansion:global/temperature_regulation/burn
execute if predicate expansion:dimension/venus if predicate expansion:chance/0005_chance run function expansion:events/venus/venus_lightning
