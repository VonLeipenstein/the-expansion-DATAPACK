# only refill the suits tank if I am wearing an entire suit
execute unless predicate expansion:armor/all run return run function expansion:utilities/error_messages/refilltank_nofullsuit

# only refill the suits tank if there actually is a tank
execute unless items entity @s armor.* *[custom_data~{ModStorage:[{components:{"minecraft:custom_data":{exp_item:{name:"oxygen_tank"}}}}]}] run return run function expansion:utilities/error_messages/refilltank_notank

# check tank level
execute store result score #source exp.oxygen_lvl run data get entity @p SelectedItem.components."minecraft:custom_data".oxygen.lvl

# if all tests succeed, refill the equipment
execute if function expansion:items/oxygen_tank/check_valid run function expansion:items/oxygen_tank/refill_equipment
