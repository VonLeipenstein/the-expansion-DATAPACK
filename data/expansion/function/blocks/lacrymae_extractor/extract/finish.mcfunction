playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~
particle minecraft:cloud ~ ~0.7 ~ 0.3 0.3 0.3 0 50

loot insert ~ ~ ~ loot expansion:items/fuel/lacrymae

execute on passengers run item replace entity @s[tag=exp.extractor_display] container.0 with minecraft:obsidian

scoreboard players set @s exp.timer_1 0

# remove the tag
tag @s remove exp.obsidian_inside