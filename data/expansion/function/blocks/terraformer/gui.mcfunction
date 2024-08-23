execute unless items block ~ ~ ~ container.0 * run loot replace block ~ ~ ~ container.0 loot expansion:items/gui/icons/tree
execute unless items block ~ ~ ~ container.1 * run loot replace block ~ ~ ~ container.1 loot expansion:items/gui/terraformer

execute unless items block ~ ~ ~ container.2 * if score @s exp.bool matches 1 run loot replace block ~ ~ ~ container.2 loot expansion:items/gui/icons/green
execute unless items block ~ ~ ~ container.2 * if score @s exp.bool matches 0 run loot replace block ~ ~ ~ container.2 loot expansion:items/gui/icons/red

execute unless items block ~ ~ ~ container.3 * run loot replace block ~ ~ ~ container.3 loot expansion:items/gui/icons/cube
execute unless items block ~ ~ ~ container.4 * run loot replace block ~ ~ ~ container.4 loot expansion:items/gui/filler

execute unless items block ~ ~ ~ container.5 * if score @s exp.counter_1 matches 1 run loot replace block ~ ~ ~ container.5 loot expansion:items/gui/icons/green
execute unless items block ~ ~ ~ container.5 * if score @s exp.counter_1 matches 0 run loot replace block ~ ~ ~ container.5 loot expansion:items/gui/icons/red

execute unless items block ~ ~ ~ container.6 * run loot replace block ~ ~ ~ container.6 loot expansion:items/gui/icons/particle
execute unless items block ~ ~ ~ container.7 * run loot replace block ~ ~ ~ container.7 loot expansion:items/gui/filler

execute unless items block ~ ~ ~ container.8 * if score @s exp.counter_2 matches 1 run loot replace block ~ ~ ~ container.8 loot expansion:items/gui/icons/green
execute unless items block ~ ~ ~ container.8 * if score @s exp.counter_2 matches 0 run loot replace block ~ ~ ~ container.8 loot expansion:items/gui/icons/red
