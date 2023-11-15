loot insert ~ ~ ~ loot expansion:fuel/lacrymae
playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~

particle minecraft:cloud ~ ~0.7 ~ 0.3 0.3 0.3 0 50

item replace entity @e[type=minecraft:item_display,tag=exp.extractor_display,limit=1,sort=nearest] container.0 with minecraft:obsidian

scoreboard players set @s exp.timer_1 0

# remove the tag
tag @e[type=minecraft:armor_stand,tag=exp.lacrymae_extractor,limit=1,sort=nearest] remove exp.obsidian_inside