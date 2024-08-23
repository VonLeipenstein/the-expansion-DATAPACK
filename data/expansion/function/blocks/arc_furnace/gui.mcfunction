execute if entity @s[tag=exp.smelting] unless items block ~ ~ ~ container.1 * run loot replace block ~ ~ ~ container.1 loot expansion:items/gui/arc_furnace_animated
execute if entity @s[tag=!exp.smelting] unless items block ~ ~ ~ container.1 * run loot replace block ~ ~ ~ container.1 loot expansion:items/gui/arc_furnace

execute unless items block ~ ~ ~ container.3 * run loot replace block ~ ~ ~ container.3 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.4 * run loot replace block ~ ~ ~ container.4 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.5 * run loot replace block ~ ~ ~ container.5 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.6 * run loot replace block ~ ~ ~ container.6 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.8 * run loot replace block ~ ~ ~ container.8 loot expansion:items/gui/filler
