
execute unless items block ~ ~ ~ container.1 * run loot replace block ~ ~ ~ container.1 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.2 * run loot replace block ~ ~ ~ container.2 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.3 * run loot replace block ~ ~ ~ container.3 loot expansion:items/gui/modstation_ship
execute unless items block ~ ~ ~ container.4 * run loot replace block ~ ~ ~ container.4 loot expansion:items/gui/filler

execute unless items block ~ ~ ~ container.6 * run loot replace block ~ ~ ~ container.6 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.7 * run loot replace block ~ ~ ~ container.7 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.8 * run loot replace block ~ ~ ~ container.8 loot expansion:items/gui/filler

execute unless items block ~ ~ ~ container.10 * run loot replace block ~ ~ ~ container.10 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.11 * run loot replace block ~ ~ ~ container.11 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.12 * run loot replace block ~ ~ ~ container.12 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.13 * run loot replace block ~ ~ ~ container.13 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.14 * run loot replace block ~ ~ ~ container.14 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.15 * run loot replace block ~ ~ ~ container.15 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.16 * run loot replace block ~ ~ ~ container.16 loot expansion:items/gui/icons/upgrade
execute unless items block ~ ~ ~ container.17 * run loot replace block ~ ~ ~ container.17 loot expansion:items/gui/filler

execute unless items block ~ ~ ~ container.19 * run loot replace block ~ ~ ~ container.19 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.20 * run loot replace block ~ ~ ~ container.20 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.21 * run loot replace block ~ ~ ~ container.21 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.22 * run loot replace block ~ ~ ~ container.22 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.23 * run loot replace block ~ ~ ~ container.23 loot expansion:items/gui/icons/remove
execute unless items block ~ ~ ~ container.24 * run loot replace block ~ ~ ~ container.24 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.25 * run loot replace block ~ ~ ~ container.25 loot expansion:items/gui/filler
execute unless items block ~ ~ ~ container.26 * run loot replace block ~ ~ ~ container.26 loot expansion:items/gui/tips/modstation_ship

# make the displayed HUD ship have the same model as the skin
execute if block ~ ~ ~ barrel{Items:[{Slot:5b,components:{"minecraft:custom_data":{spaceship_skin:1b}}}]} run data modify entity @e[type=minecraft:item_display,tag=exp.modstation_display,limit=1,sort=nearest] item.components.minecraft:custom_model_data set from block ~ ~ ~ Items[{Slot:5b}].components.minecraft:custom_model_data
execute unless block ~ ~ ~ barrel{Items:[{Slot:5b,components:{"minecraft:custom_data":{spaceship_skin:1b}}}]} unless score @s exp.timer_1 matches 1.. run data modify entity @e[type=minecraft:item_display,tag=exp.modstation_display,limit=1,sort=nearest] item.components.minecraft:custom_model_data set from entity @e[type=minecraft:item_display,predicate=expansion:nbt_checks/root_vehicle/modded_vehicle,limit=1,sort=nearest] item.components.minecraft:custom_model_data