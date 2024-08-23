execute unless items block ~ ~ ~ container.0 * run loot replace block ~ ~ ~ container.0 loot expansion:items/gui/icons/air

execute unless items block ~ ~ ~ container.1 * if score @s exp.bool matches 0 run loot replace block ~ ~ ~ container.1 loot expansion:items/gui/icons/pressure
execute unless items block ~ ~ ~ container.1 * if score @s exp.bool matches 1 run loot replace block ~ ~ ~ container.1 loot expansion:items/gui/icons/depressure

execute unless items block ~ ~ ~ container.2 * run loot replace block ~ ~ ~ container.2 loot expansion:items/gui/icons/sphere

execute unless items block ~ ~ ~ container.3 * run loot replace block ~ ~ ~ container.3 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.4 * run loot replace block ~ ~ ~ container.4 loot expansion:items/gui/oxygenator
execute unless items block ~ ~ ~ container.5 * run loot replace block ~ ~ ~ container.5 loot expansion:items/gui/filler

execute unless items block ~ ~ ~ container.7 * run loot replace block ~ ~ ~ container.7 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.8 * run loot replace block ~ ~ ~ container.8 loot expansion:items/gui/tips/oxygenator
