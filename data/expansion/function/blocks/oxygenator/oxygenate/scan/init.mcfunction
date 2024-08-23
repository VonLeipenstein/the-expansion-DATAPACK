execute align xyz run summon minecraft:marker ~.5 ~.5 ~.5 {Tags:["exp.oxygen_marker"]}
scoreboard players set @s exp.hold_value 10000
tag @s remove exp.initiate
data modify entity @s[tag=!exp.pressurized] ArmorItems[3].components.minecraft:custom_model_data set value 1012310
