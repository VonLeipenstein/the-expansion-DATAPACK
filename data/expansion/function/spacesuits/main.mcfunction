# If your equipment doesn't have the tag but you are wearing it, equip it
execute if function expansion:spacesuits/equip/check_tags run function expansion:spacesuits/equip/main

# Apply set bonusses if the players wears a full set of armor of the same type (Before the durability calculation)
execute if predicate expansion:armor/all run function expansion:spacesuits/set_bonus/main

# Extract all the armor scores
execute if predicate expansion:periodic/10 run function expansion:spacesuits/extract_scores

# Apply temperature damage to suit pieces
execute if predicate expansion:periodic/10 run function expansion:spacesuits/integrity/main

# Leak oxygen and refill a players reserve only if the player wears a full suit
execute if predicate expansion:armor/all run function expansion:spacesuits/oxygen/main

# Actionbar
execute if predicate expansion:periodic/10 unless entity @s[tag=exp.inside_spaceship] unless entity @s[tag=exp.inside_module] unless entity @s[tag=exp.inside_capsule] run function expansion:spacesuits/actionbar/main

## Other Modules
# rocket boots module
execute if items entity @s armor.feet *[custom_data~{ModStorage:[{components:{"minecraft:custom_data":{exp_item:{name:"rocket_module"}}}}]}] run function expansion:items/rocket_boots/main

# magnetic_boots 
execute if items entity @s armor.feet *[custom_data~{ModStorage:[{components:{"minecraft:custom_data":{exp_item:{name:"magnetic_module"}}}}]}] run function expansion:items/magnetic_boots/main
execute unless items entity @s armor.feet *[custom_data~{ModStorage:[{components:{"minecraft:custom_data":{exp_item:{name:"magnetic_module"}}}}]}] run tag @s[tag=exp.ignores_gravity_effects] remove exp.ignores_gravity_effects