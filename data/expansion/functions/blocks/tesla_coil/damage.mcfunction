# damage
damage @s[tag=exp.zapped,tag=!exp.active_coil] 5 minecraft:generic

# particles
execute if entity @s[tag=exp.zapped] anchored eyes run particle minecraft:flash ~ ~1.2 ~ 0 0 0 0 1 force
execute if entity @s[tag=exp.zapped,tag=!exp.tesla_coil] anchored eyes run particle minecraft:flame ~ ~1.2 ~ 0 0 0 0.01 10 force

# lightning transforms, doesn't run on peaceful difficulty
execute store result score @s exp.bool run difficulty 
execute unless score @s exp.bool matches 0 if entity @s[type=#expansion:transformable] unless entity @s[nbt={powered:1b}] run function expansion:blocks/tesla_coil/transform_mob
scoreboard players reset @s exp.bool

# remove tags
tag @s remove exp.zap_target
tag @s[tag=exp.zapped] remove exp.zapped
