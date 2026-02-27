# recrsively break mounted parts
execute on passengers on passengers if entity @s[tag=exp.rocket_part] at @s run function expansion:blocks/rocket_parts/destroy

# break this one
execute if entity @s[tag=exp.rocket_bottom] as @p[tag=exp.clicked] unless entity @s[gamemode=creative] run loot give @s loot expansion:items/rocket_bottom
execute if entity @s[tag=exp.rocket_cockpit] as @p[tag=exp.clicked] unless entity @s[gamemode=creative] run loot give @s loot expansion:items/rocket_cockpit
execute if entity @s[tag=exp.rocket_top] as @p[tag=exp.clicked] unless entity @s[gamemode=creative] run loot give @s loot expansion:items/rocket_top

function expansion:blocks/rocket_parts/kill