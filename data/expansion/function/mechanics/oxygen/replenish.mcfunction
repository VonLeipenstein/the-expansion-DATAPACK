# >>> generated function callers >>>
# Callers for expansion:mechanics/oxygen/replenish
# Total callers: 2 from 2 source(s)
# Folder rule (function callers): 0/2 honored
# Sources:
# - function expansion:blocks/oxygenator/oxygenate/connected_player (1 caller) [WARN side/down 5]
# - function expansion:blocks/terraformer/connected_player (1 caller) [WARN side/down 4]
# <<< generated function callers <<<

# Used by sources other than the players suit tank to replenish entity oxygen.
# Entities who replenish their oxygen like this get tagged
# Tag is used to determine if their armor should leak in this space

# replenish the compressors oxygen
execute if entity @s[type=minecraft:interaction] on vehicle run return run scoreboard players operation @s exp.oxygen_lvl = @s exp.oxygen_max

tag @s add exp.inside_pressurized_space

# replenishes the players oxygen supply infinitely
execute unless score @s exp.oxygen_lvl = @s exp.oxygen_max unless predicate expansion:armor/all run scoreboard players operation @s exp.oxygen_lvl = @s exp.oxygen_max
