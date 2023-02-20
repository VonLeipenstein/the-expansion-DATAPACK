summon marker ~ ~ ~ {Tags:["exp.oxygen_marker"]}
scoreboard players set @s exp.hold_value 10000
tag @s remove exp.initiate
data modify entity @s[tag=!exp.pressurized] ArmorItems[3].tag.CustomModelData set value 1012310
