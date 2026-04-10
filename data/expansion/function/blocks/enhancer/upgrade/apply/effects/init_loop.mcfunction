# >>> generated function callers >>>
# Callers for expansion:blocks/enhancer/upgrade/apply/effects/init_loop
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 2/2 honored
# Sources:
# - function expansion:blocks/enhancer/upgrade/enhance (1 caller) [OK above +2]
# - function expansion:blocks/enhancer/upgrade/remove (1 caller) [OK above +2]
# <<< generated function callers <<<

# reset all the stats of this item
function expansion:blocks/enhancer/upgrade/apply/effects/reset

# apply all the new stats from the module array
execute store result score #apply_module exp.max_range run data get storage expansion:temp ModStorage
function expansion:blocks/enhancer/upgrade/apply/effects/storage_loop
scoreboard players reset #apply_module exp.max_range

# apply the cold resistance modifiers
function expansion:blocks/enhancer/upgrade/apply/effects/cold_resist

# apply heat resistance modifiers
function expansion:blocks/enhancer/upgrade/apply/effects/heat_resist

# apply armor modifiers
function expansion:blocks/enhancer/upgrade/apply/effects/armor

# apply speed modifiers
function expansion:blocks/enhancer/upgrade/apply/effects/speed

# apply durability modifiers
execute if score #temp exp.max_health matches -100.. run function expansion:blocks/enhancer/upgrade/apply/effects/durability

# apply the oxygen scores on chestplates (could be better but don't want to overengineer)
execute if items entity @s contents *[custom_data~{exp_armor:{Slot:102b}}] run function expansion:blocks/enhancer/upgrade/apply/effects/oxygen_percent

# display the icon
item modify entity @s contents expansion:space_equipment/display_module_icons