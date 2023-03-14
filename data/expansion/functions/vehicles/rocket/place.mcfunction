function expansion:vehicles/rocket/summon_rocket
execute store result score @e[type=minecraft:armor_stand,tag=exp.rocket,limit=1,sort=nearest] exp.fuel_level run data get entity @s SelectedItem.tag.fuel_lvl
