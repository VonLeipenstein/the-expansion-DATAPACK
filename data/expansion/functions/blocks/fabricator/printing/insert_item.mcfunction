item replace block ~ ~ ~ container.15 from entity @s armor.feet
execute if block ~ ~ ~ barrel{Items:[{Slot:15b,id:"minecraft:jigsaw"}]} run item modify block ~ ~ ~ container.15 expansion:utility/set_count_from_score
