# >>> generated function callers >>>
# Callers for expansion:blocks/rocket_parts/destroy
# Total callers: 3 from 3 source(s)
# Folder rule (function callers): 3/3 honored
# Sources:
# - function expansion:blocks/rocket_parts/create_rocket (1 caller) [OK same-folder]
# - function expansion:blocks/rocket_parts/destroy (1 caller) [OK same-folder]
# - function expansion:blocks/rocket_parts/init_pickup (1 caller) [OK same-folder]
# <<< generated function callers <<<

# recrsively break mounted parts
execute on passengers on passengers if entity @s[tag=exp.rocket_part] at @s run function expansion:blocks/rocket_parts/destroy

# break this one
execute if entity @s[tag=exp.rocket_bottom] as @p[tag=exp.clicked] unless entity @s[gamemode=creative] run loot give @s loot expansion:items/rocket_bottom
execute if entity @s[tag=exp.rocket_cockpit] as @p[tag=exp.clicked] unless entity @s[gamemode=creative] run loot give @s loot expansion:items/rocket_cockpit
execute if entity @s[tag=exp.rocket_top] as @p[tag=exp.clicked] unless entity @s[gamemode=creative] run loot give @s loot expansion:items/rocket_top

function expansion:blocks/rocket_parts/kill