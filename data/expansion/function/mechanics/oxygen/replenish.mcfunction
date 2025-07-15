# Used by sources other than the players suit tank to replenish entity oxygen.
# Entities who replenish their oxygen like this get tagged
# Tag is used to determine if their armor should leak in this space

# replenish the compressors oxygen
execute if entity @s[type=minecraft:interaction] on vehicle run return run scoreboard players operation @s exp.oxygen_lvl = @s exp.oxygen_max

tag @s add exp.inside_pressurized_space

# replenishes the players oxygen supply infinitely
execute unless score @s exp.oxygen_lvl = @s exp.oxygen_max unless predicate expansion:armor/all run scoreboard players operation @s exp.oxygen_lvl = @s exp.oxygen_max
