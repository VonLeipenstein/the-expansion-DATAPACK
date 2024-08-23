item replace entity @p[tag=exp.clicked,gamemode=!creative] weapon.mainhand with air

execute if items entity @p[tag=exp.clicked] weapon.mainhand blue_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012100
execute if items entity @p[tag=exp.clicked] weapon.mainhand black_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012101
execute if items entity @p[tag=exp.clicked] weapon.mainhand brown_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012102
execute if items entity @p[tag=exp.clicked] weapon.mainhand cyan_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012103
execute if items entity @p[tag=exp.clicked] weapon.mainhand gray_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012104
execute if items entity @p[tag=exp.clicked] weapon.mainhand green_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012105
execute if items entity @p[tag=exp.clicked] weapon.mainhand light_blue_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012106
execute if items entity @p[tag=exp.clicked] weapon.mainhand light_gray_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012107
execute if items entity @p[tag=exp.clicked] weapon.mainhand lime_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012108
execute if items entity @p[tag=exp.clicked] weapon.mainhand magenta_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012109
execute if items entity @p[tag=exp.clicked] weapon.mainhand orange_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012110
execute if items entity @p[tag=exp.clicked] weapon.mainhand pink_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012111
execute if items entity @p[tag=exp.clicked] weapon.mainhand purple_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012112
execute if items entity @p[tag=exp.clicked] weapon.mainhand red_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012113
execute if items entity @p[tag=exp.clicked] weapon.mainhand white_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012114
execute if items entity @p[tag=exp.clicked] weapon.mainhand yellow_dye run data modify entity @s item.components."minecraft:custom_model_data" set value 1012115

execute at @s run item replace block ~ ~-1 ~ container.5 from entity @s container.0
