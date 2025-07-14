# If your equipment doesn't have the tag but you are wearing it, equip it
execute if function expansion:spacesuits/equip/check_tags run function expansion:spacesuits/equip/main

# Apply set bonusses if the players wears a full set of armor of the same type (Before the durability calculation)
execute if predicate expansion:armor/all run function expansion:spacesuits/set_bonus/main

# Periodically loop through the armor pieces and re-calculate the durability, while also adding any temperature damage
execute if predicate expansion:periodic/10 unless entity @s[tag=exp.inside_vehicle] unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] run function expansion:spacesuits/integrity/main

# Attempt to refill the players oxygen supply if it is not already full
execute unless score @s exp.oxygen_lvl = @s exp.oxygen_max if predicate expansion:armor/chest run function expansion:spacesuits/player_oxygen/replenish_from_tank

# Lose a percentage of the player oxygen based on suit integrity
execute if predicate expansion:periodic/10 run function expansion:spacesuits/player_oxygen/leakage_loss

# Actionbar
execute if predicate expansion:periodic/10 unless entity @s[tag=exp.inside_vehicle] run function expansion:spacesuits/actionbar

## Other Modules
# rocket boots module
execute if items entity @s armor.feet *[custom_data~{ModStorage:[{components:{"minecraft:custom_data":{exp_item:{name:"rocket_module"}}}}]}] run function expansion:items/rocket_boots/main

# magnetic_boots 
execute if items entity @s armor.feet *[custom_data~{ModStorage:[{components:{"minecraft:custom_data":{exp_item:{name:"magnetic_module"}}}}]}] run function expansion:items/magnetic_boots/main
execute unless items entity @s armor.feet *[custom_data~{ModStorage:[{components:{"minecraft:custom_data":{exp_item:{name:"magnetic_module"}}}}]}] run tag @s[tag=exp.ignores_gravity_effects] remove exp.ignores_gravity_effects